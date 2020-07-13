//
//  ServerGroupManager.swift
//  ShadowsocksX-NG-RX
//
//  Created by Felix on 2019/8/13.
//  Copyright © 2019 felix.xu. All rights reserved.
//

import Foundation

class ServerGroupManager: NSObject {
    static let instance: ServerGroupManager = ServerGroupManager()
    static var serverGroups = [ServerGroup]()
    
    override init() {
        let defaults = UserDefaults.standard
        if let groups = defaults.array(forKey: UserKeys.ServerGroups) {
            for item in groups {
                let serverGroup = ServerGroup.fromDictionary(item as! [String : AnyObject])
                let profiles = serverGroup.serverProfiles.sorted(by: {
                    (a, b) in return UserDefaults.standard.bool(forKey: UserKeys.OrderAddress) ? a.serverHost < b.serverHost : a.remark < b.remark
                })
                var infoArr: [ServerProfile] = []
                var otherArr: [ServerProfile] = []
                for item in profiles {
                    if item.remark.contains("剩余流量") || item.remark.contains("过期时间") {
                        infoArr.append(item)
                    } else {
                        otherArr.append(item)
                    }
                }
                serverGroup.serverProfiles = infoArr + otherArr
                ServerGroupManager.serverGroups.append(serverGroup)
            }
        }
        NSLog("ServerGroup manager init")
    }
    
    static func save() {
        for group in serverGroups {
            let profiles = group.serverProfiles.sorted(by: {
                (a, b) in return UserDefaults.standard.bool(forKey: UserKeys.OrderAddress) ? a.serverHost < b.serverHost : a.remark < b.remark
            })
            var infoArr: [ServerProfile] = []
            var otherArr: [ServerProfile] = []
            for item in profiles {
                if item.remark.contains("剩余流量") || item.remark.contains("过期时间") {
                    infoArr.append(item)
                } else {
                    otherArr.append(item)
                }
            }
            group.serverProfiles = infoArr + otherArr
        }
        UserDefaults.standard.set(ServerGroup.toDictionaries(serverGroups), forKey: UserKeys.ServerGroups)
    }
    
    static func getServerGroupByGroupId(_ groupId: String) -> ServerGroup? {
        return serverGroups.first(where: {$0.groupId == groupId})
    }
    
    static func getSubscriptions() -> [ServerGroup] {
        return serverGroups.filter({$0.isSubscription})
    }
}
