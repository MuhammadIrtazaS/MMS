CREATE TABLE [dbo].[attendance] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [date]      DATE          NOT NULL,
    [time]      VARCHAR (1)     NOT NULL,
    [meal_name] VARCHAR(50)           NOT NULL,
    [user_id]   VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


CREATE TABLE [dbo].[feedback] (
    [Id]      INT          IDENTITY (1, 1) NOT NULL,
    [text]    TEXT         NOT NULL,
    [ratings] FLOAT (53)   NOT NULL,
    [meal]    VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [meal] (
    [Id]    INT           IDENTITY (1, 1) NOT NULL,
    [name]  VARCHAR (50) NOT NULL,
    [time]  VARCHAR (1)     NOT NULL,
    [day]   VARCHAR (3)     NOT NULL,
    [price] INT           NOT NULL,
    [is_deleted] VARCHAR(1) NOT NULL DEFAULT 'N', 
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [user] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [user_id]  VARCHAR (20) NOT NULL,
    [name]     VARCHAR (50) NOT NULL,
    [role]     VARCHAR (10) NOT NULL,
    [password] VARCHAR (20) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

