BEGIN TRY
   SELECT 'Outer level'
   BEGIN TRY
      SELECT 'Inner level';
      THROW 51200, 'Inner level throw', 1
   END TRY
   BEGIN CATCH
      SELECT 'Inner Catch with re-throw';
      THROW
   END CATCH
END TRY
BEGIN CATCH
   SELECT 'Outer Catch';
   THROW
END CATCH
