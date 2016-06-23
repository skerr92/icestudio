{
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "45e36d8f-6474-4698-94c0-fd42dee27492",
        "type": "low",
        "data": {},
        "position": {
          "x": 196,
          "y": 57
        }
      },
      {
        "id": "ae673f46-9a0e-42b9-99b1-d845900f2222",
        "type": "not",
        "data": {},
        "position": {
          "x": 266,
          "y": 232
        }
      },
      {
        "id": "498aa201-79c4-459b-855f-de241c2b869c",
        "type": "basic.input",
        "data": {
          "label": "a",
          "pin": {
            "name": "SW1",
            "value": "10"
          }
        },
        "position": {
          "x": 50,
          "y": 230
        }
      },
      {
        "id": "15a5a5dc-8189-49a3-9b69-ae60cfca6d59",
        "type": "basic.output",
        "data": {
          "label": "b",
          "pin": {
            "name": "LED0",
            "value": "95"
          }
        },
        "position": {
          "x": 699,
          "y": 81
        }
      },
      {
        "id": "b158bcfc-d844-4216-bc2a-b49238ea26aa",
        "type": "or",
        "data": {},
        "position": {
          "x": 451,
          "y": 71
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "498aa201-79c4-459b-855f-de241c2b869c",
          "port": "out"
        },
        "target": {
          "block": "ae673f46-9a0e-42b9-99b1-d845900f2222",
          "port": "ec18fe03-b702-43d3-afb2-156848805175"
        }
      },
      {
        "source": {
          "block": "45e36d8f-6474-4698-94c0-fd42dee27492",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "b158bcfc-d844-4216-bc2a-b49238ea26aa",
          "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
        }
      },
      {
        "source": {
          "block": "ae673f46-9a0e-42b9-99b1-d845900f2222",
          "port": "2b6984aa-9351-4d64-b4f8-48ef983cc738"
        },
        "target": {
          "block": "b158bcfc-d844-4216-bc2a-b49238ea26aa",
          "port": "97b51945-d716-4b6c-9db9-970d08541249"
        }
      },
      {
        "source": {
          "block": "b158bcfc-d844-4216-bc2a-b49238ea26aa",
          "port": "664caf9e-5f40-4df4-800a-b626af702e62"
        },
        "target": {
          "block": "15a5a5dc-8189-49a3-9b69-ae60cfca6d59",
          "port": "in"
        }
      }
    ]
  },
  "deps": {
    "low": {
      "graph": {
        "blocks": [
          {
            "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
            "type": "basic.code",
            "data": {
              "code": "// Driver low\n\nassign v = 1'b0;",
              "ports": {
                "in": [],
                "out": [
                  "v"
                ]
              }
            },
            "position": {
              "x": 100,
              "y": 100
            }
          },
          {
            "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
            "type": "basic.output",
            "data": {
              "label": "o"
            },
            "position": {
              "x": 633,
              "y": 165
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "port": "v"
            },
            "target": {
              "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    },
    "not": {
      "graph": {
        "blocks": [
          {
            "id": "6796f28b-7f70-4c8d-adc8-b7f42d18b336",
            "type": "basic.code",
            "data": {
              "code": "// NOT logic gate\n\nassign c = ! a;",
              "ports": {
                "in": [
                  "a"
                ],
                "out": [
                  "c"
                ]
              }
            },
            "position": {
              "x": 240,
              "y": 80
            }
          },
          {
            "id": "ec18fe03-b702-43d3-afb2-156848805175",
            "type": "basic.input",
            "data": {
              "label": "x"
            },
            "position": {
              "x": 22,
              "y": 145
            }
          },
          {
            "id": "2b6984aa-9351-4d64-b4f8-48ef983cc738",
            "type": "basic.output",
            "data": {
              "label": "z"
            },
            "position": {
              "x": 765,
              "y": 145
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "ec18fe03-b702-43d3-afb2-156848805175",
              "port": "out"
            },
            "target": {
              "block": "6796f28b-7f70-4c8d-adc8-b7f42d18b336",
              "port": "a"
            }
          },
          {
            "source": {
              "block": "6796f28b-7f70-4c8d-adc8-b7f42d18b336",
              "port": "c"
            },
            "target": {
              "block": "2b6984aa-9351-4d64-b4f8-48ef983cc738",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    },
    "or": {
      "graph": {
        "blocks": [
          {
            "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
            "type": "basic.code",
            "data": {
              "code": "// OR logic gate\n\nassign c = a | b;",
              "ports": {
                "in": [
                  "a",
                  "b"
                ],
                "out": [
                  "c"
                ]
              }
            },
            "position": {
              "x": 243,
              "y": 71
            }
          },
          {
            "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
            "type": "basic.input",
            "data": {
              "label": "x"
            },
            "position": {
              "x": 31,
              "y": 31
            }
          },
          {
            "id": "97b51945-d716-4b6c-9db9-970d08541249",
            "type": "basic.input",
            "data": {
              "label": "y"
            },
            "position": {
              "x": 36,
              "y": 243
            }
          },
          {
            "id": "664caf9e-5f40-4df4-800a-b626af702e62",
            "type": "basic.output",
            "data": {
              "label": "o"
            },
            "position": {
              "x": 778,
              "y": 137
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "port": "out"
            },
            "target": {
              "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "port": "a"
            }
          },
          {
            "source": {
              "block": "97b51945-d716-4b6c-9db9-970d08541249",
              "port": "out"
            },
            "target": {
              "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "port": "b"
            }
          },
          {
            "source": {
              "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "port": "c"
            },
            "target": {
              "block": "664caf9e-5f40-4df4-800a-b626af702e62",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    }
  }
}