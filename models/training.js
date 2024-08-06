import { pool, Table } from './db.js';

const tableName = 'Training';
const tableColumns = `
grade VARCHAR(2),
attendance BOOL DEFAULT 0 NOT NULL,
request_id INT NOT NULL,
FOREIGN KEY (request_id) REFERENCES TrainingRequest(request_id),
staff_id int NOT NULL,
FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
`;

const table = new Table(tableName, tableColumns);

export { table };

// export async function getAllTraining() {
//     try {
//       const poolRequest = pool.request();
//       const result = await poolRequest.query(`SELECT * FROM ${tableName}`);
//       return result.recordset;
//     } catch (err) {
//       console.error('Error querying all trainings: ', err);
//       throw err; // Rethrow the error to propagate it
//     }
//   }


//   export async function getAllExternalTraining() {
//     try {
//       const poolRequest = pool.request();
//       const result = await poolRequest.query(`SELECT * FROM ${tableName} WHERE type = 'external'`);
//       return result.recordset;
//     } catch (err) {
//       console.error('Error querying external trainings: ', err);
//       throw err;
//     }
//   }
  
//   export async function getAllInternalTraining() {
//     try {
//       const poolRequest = pool.request();
//       const result = await poolRequest.query(`SELECT * FROM ${tableName} WHERE type = 'internal'`);
//       return result.recordset;
//     } catch (err) {
//       console.error('Error querying internal trainings: ', err);
//       throw err;
//     }
//   }