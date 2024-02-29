import React, { useState, useEffect } from 'react';
import axios from 'axios';

export function SampleComponent() {

  const [data, setData] = useState()

  useEffect(() => {
    callServer()
  }, [])

  function callServer() {
    axios.get(`http://localhost:${process.env.REACT_APP_SERVER_PORT}/test`, {
      params: {
        table: 'sample',
      },
    }).then((response) => {
      console.log(response.data);
      setData(response.data)
      // return response.data
    });
  }

  // callServer()

  return (
    <div>
      This is a sample component
      {/* {callServer()} */}
      <table>
        <thead>
          <tr>
            <td>No.</td>
            <td>Name</td>
          </tr>
        </thead>
        <tbody>
          {data?.map((item, index) => (
            <tr key={index}>
              <td >
                {item.id}{/* Assuming your data object has 'id' and 'name' properties */}
              </td>
              <td>
                {item.name}
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}