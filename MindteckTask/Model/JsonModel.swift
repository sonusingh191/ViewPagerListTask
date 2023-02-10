//
//  JsonModel.swift
//  MindteckTask
//
//  Created by sonu singh on 09/02/23.
//

import Foundation

struct DataModel: Codable {
  var type: String?
  var list: [ListData]?
}

struct ListData: Codable {
  var image: String?
  var name: String?
}


let jsonResponse = """
[{
  "type":"pexels-james-wheeler-1519088",
  "list":[{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 1"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 2"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 3"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 4"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 5"
  },{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 11"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 12"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 13"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 14"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 15"
  },{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 1"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 2"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 3"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 4"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 5"
  },{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 1"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 2"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 3"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 4"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 5"
  },{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 11"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 12"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 13"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 14"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 15"
  },{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 1"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 2"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 3"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 4"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 5"
  },{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 1"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 2"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 3"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 4"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 5"
  }]
},{
  "type":"pexels-craig-adderley-1563355",
  "list":[{
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 6"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 7"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 8"
  }, {
    "image":"pexels-blaque-x-863963",
    "name":"Title 9"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 10"
  },{
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 6"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 7"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 8"
  }, {
    "image":"pexels-blaque-x-863963",
    "name":"Title 9"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 10"
  },{
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 6"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 7"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 8"
  }, {
    "image":"pexels-blaque-x-863963",
    "name":"Title 9"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 10"
  },{
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 6"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 7"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 8"
  }, {
    "image":"pexels-blaque-x-863963",
    "name":"Title 9"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 10"
  },{
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 6"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 7"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 8"
  }, {
    "image":"pexels-blaque-x-863963",
    "name":"Title 9"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 10"
  },{
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 6"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 7"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 8"
  }, {
    "image":"pexels-blaque-x-863963",
    "name":"Title 9"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 10"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 10"
  },{
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 6"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 7"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 8"
  }, {
    "image":"pexels-blaque-x-863963",
    "name":"Title 9"
  }]
},{
  "type":"pexels-matthew-montrone-1324803",
  "list":[{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 11"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 12"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 13"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 14"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 15"
  },{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 1"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 2"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 3"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 4"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 5"
  },{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 11"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 12"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 13"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 14"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 15"
  },{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 1"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 2"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 3"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 4"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 5"
  },{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 11"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 12"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 13"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 14"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 15"
  },{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 1"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 2"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 3"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 4"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 5"
  },{
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 11"
  }, {
    "image":"pexels-james-wheeler-1519088",
    "name":"Title 12"
  }, {
    "image":"pexels-katie-burandt-1212693",
    "name":"Title 13"
  }, {
    "image":"pexels-craig-adderley-1563355",
    "name":"Title 14"
  }, {
    "image":"pexels-matthew-montrone-1324803",
    "name":"Title 15"
  }]
}]
"""
