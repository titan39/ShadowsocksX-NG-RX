# ShadowsocksX-NG-RX

This project just toy for self.

`Current version is 2.1.6`

## Release Note

### 2.1.6

- fix ping servers

### 2.1.5

- add nodes order(default order by host, you can change it to remark in server preference)
- remove url schema

### 2.1.4

- actually location shown(click to refresh)

### 2.1.3

- ping latency use google
- other optimizes

### 2.1.2

- fix http port and loadbalance port modify
- fix lib dependency

### 2.1.1

- fix possible crash when enable show network speed
- other optimizes

### 2.1.0

- fix crash when remove active group
- reload config when advance setting saved
- ss-local3.3.3;haproxy2.0.8;v2ray4.21.3

### 2.0.9

- set osx to 10.12
- update vmess parse

### 2.0.8

- Add socks and http host edit
- Add group name edit(double click group name in server preference)
- Add vmess display in server preference
- Add v2ray config in advance preference

### 2.0.7

- Update url parse

### 2.0.6

- V2ray (BETA. Only feed, QR code, clipboard support. vmess format as same as v2rayN)

  ```json
  {
    "v": "2",
    "ps": "备注别名",
    "add": "111.111.111.111",
    "port": "32000",
    "id": "1386f85e-657b-4d6e-9d56-78badb75e1fd",
    "aid": "100",
    "net": "tcp",
    "type": "none",
    "host": "www.bbb.com",
    "path": "/",
    "tls": "tls"
  }
  ```

- Fix dependence for privoxy
- Some optimizations

### 2.0.5

- Resolve risk warning on catalina
- Some optimizations

### 2.0.4

- Bugs fixed
- Some optimizations

### 2.0.3

- Show count of selected nodes for load balance
- Remove invalid nodes when update feed

### 2.0.2

- Fix localization init
- Some advance
- Fix bugs

### 2.0.1

- Fix bug for save config

### 2.0.0

- Load balance support
- Auto update
- Advance preference adjust
- Server preference improve
- Net speed
- ACL support
- Active node display
- Auto apply config after changed PAC rule
- Code adjust
- Localize

## License

The project is released under the terms of GPLv3.

## Acknowledgment

[![jetbrains](./static/jetbrains.svg)](https://www.jetbrains.com/?from=ShadowsocksX-NG-RX)
