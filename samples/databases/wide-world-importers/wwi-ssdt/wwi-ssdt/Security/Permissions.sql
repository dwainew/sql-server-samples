﻿/*
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO PUBLIC;


GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO PUBLIC;
*/

GO
CREATE LOGIN WebApi WITH PASSWORD = '$(WebAPIpwd)';
GO
CREATE USER WebApi FROM LOGIN WebApi
WITH DEFAULT_SCHEMA=WebApi;
GO
GRANT CONNECT TO WebApi;
GO
GRANT EXECUTE ON SCHEMA::WebApi TO WebApi;
GO
GRANT SELECT ON SCHEMA::WebApi TO WebApi;
GO
GRANT INSERT ON Application.Logs TO WebApi;
GO
GRANT SELECT ON Application.Logs TO WebApi;
GO