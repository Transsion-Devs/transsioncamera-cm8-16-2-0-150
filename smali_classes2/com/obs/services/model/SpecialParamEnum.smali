.class public final enum Lcom/obs/services/model/SpecialParamEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/SpecialParamEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum ACCESSLABEL:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum ACL:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum APPEND:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum CORS:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum CUSTOMDOMAIN:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum DELETE:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum DIRECTCOLDACCESS:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum ENCRYPTION:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum FILEINTERFACE:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum GETCONTENTSUMMARY:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum ID:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum INVENTORY:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum LIFECYCLE:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum LISTCONTENTSUMMARY:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum LISTCONTENTSUMMARYFS:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum LOCATION:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum LOGGING:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum METADATA:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum MODIFY:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum NOTIFICATION:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum OBSALIAS:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum OBSBUCKETALIAS:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum POLICY:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum QUOTA:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum RENAME:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum REPLICATION:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum REPLICATION_PROGRESS:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum REQUEST_PAYMENT:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum RESTORE:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum RULE_ID:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum STORAGECLASS:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum STORAGEINFO:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum STORAGEPOLICY:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum TAGGING:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum TRUNCATE:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum UPLOADS:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum VERSIONING:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum VERSIONS:Lcom/obs/services/model/SpecialParamEnum;

.field public static final enum WEBSITE:Lcom/obs/services/model/SpecialParamEnum;


# instance fields
.field private stringCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 42

    .line 27
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/4 v0, 0x0

    const-string v2, "location"

    const-string v3, "LOCATION"

    invoke-direct {v1, v3, v0, v2}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->LOCATION:Lcom/obs/services/model/SpecialParamEnum;

    .line 31
    new-instance v2, Lcom/obs/services/model/SpecialParamEnum;

    const/4 v0, 0x1

    const-string v3, "storageinfo"

    const-string v4, "STORAGEINFO"

    invoke-direct {v2, v4, v0, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/obs/services/model/SpecialParamEnum;->STORAGEINFO:Lcom/obs/services/model/SpecialParamEnum;

    .line 35
    new-instance v3, Lcom/obs/services/model/SpecialParamEnum;

    const/4 v0, 0x2

    const-string v4, "quota"

    const-string v5, "QUOTA"

    invoke-direct {v3, v5, v0, v4}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/obs/services/model/SpecialParamEnum;->QUOTA:Lcom/obs/services/model/SpecialParamEnum;

    .line 39
    new-instance v4, Lcom/obs/services/model/SpecialParamEnum;

    const/4 v0, 0x3

    const-string v5, "acl"

    const-string v6, "ACL"

    invoke-direct {v4, v6, v0, v5}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/obs/services/model/SpecialParamEnum;->ACL:Lcom/obs/services/model/SpecialParamEnum;

    .line 43
    new-instance v5, Lcom/obs/services/model/SpecialParamEnum;

    const/4 v0, 0x4

    const-string v6, "logging"

    const-string v7, "LOGGING"

    invoke-direct {v5, v7, v0, v6}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/obs/services/model/SpecialParamEnum;->LOGGING:Lcom/obs/services/model/SpecialParamEnum;

    .line 47
    new-instance v6, Lcom/obs/services/model/SpecialParamEnum;

    const/4 v0, 0x5

    const-string v7, "policy"

    const-string v8, "POLICY"

    invoke-direct {v6, v8, v0, v7}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/obs/services/model/SpecialParamEnum;->POLICY:Lcom/obs/services/model/SpecialParamEnum;

    .line 51
    new-instance v7, Lcom/obs/services/model/SpecialParamEnum;

    const/4 v0, 0x6

    const-string v8, "lifecycle"

    const-string v9, "LIFECYCLE"

    invoke-direct {v7, v9, v0, v8}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/obs/services/model/SpecialParamEnum;->LIFECYCLE:Lcom/obs/services/model/SpecialParamEnum;

    .line 55
    new-instance v8, Lcom/obs/services/model/SpecialParamEnum;

    const/4 v0, 0x7

    const-string v9, "website"

    const-string v10, "WEBSITE"

    invoke-direct {v8, v10, v0, v9}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/obs/services/model/SpecialParamEnum;->WEBSITE:Lcom/obs/services/model/SpecialParamEnum;

    .line 59
    new-instance v9, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v0, 0x8

    const-string v10, "versioning"

    const-string v11, "VERSIONING"

    invoke-direct {v9, v11, v0, v10}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/obs/services/model/SpecialParamEnum;->VERSIONING:Lcom/obs/services/model/SpecialParamEnum;

    .line 63
    new-instance v10, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v0, 0x9

    const-string v11, "requestPayment"

    const-string v12, "REQUEST_PAYMENT"

    invoke-direct {v10, v12, v0, v11}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/obs/services/model/SpecialParamEnum;->REQUEST_PAYMENT:Lcom/obs/services/model/SpecialParamEnum;

    .line 67
    new-instance v11, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v0, 0xa

    const-string v12, "storagePolicy"

    const-string v13, "STORAGEPOLICY"

    invoke-direct {v11, v13, v0, v12}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/obs/services/model/SpecialParamEnum;->STORAGEPOLICY:Lcom/obs/services/model/SpecialParamEnum;

    .line 71
    new-instance v12, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v0, 0xb

    const-string v13, "storageClass"

    const-string v14, "STORAGECLASS"

    invoke-direct {v12, v14, v0, v13}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/obs/services/model/SpecialParamEnum;->STORAGECLASS:Lcom/obs/services/model/SpecialParamEnum;

    .line 75
    new-instance v13, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v0, 0xc

    const-string v14, "cors"

    const-string v15, "CORS"

    invoke-direct {v13, v15, v0, v14}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/obs/services/model/SpecialParamEnum;->CORS:Lcom/obs/services/model/SpecialParamEnum;

    .line 79
    new-instance v14, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v0, 0xd

    const-string v15, "uploads"

    move-object/from16 v16, v1

    const-string v1, "UPLOADS"

    invoke-direct {v14, v1, v0, v15}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/obs/services/model/SpecialParamEnum;->UPLOADS:Lcom/obs/services/model/SpecialParamEnum;

    .line 83
    new-instance v15, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v0, 0xe

    const-string v1, "versions"

    move-object/from16 v17, v2

    const-string v2, "VERSIONS"

    invoke-direct {v15, v2, v0, v1}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/obs/services/model/SpecialParamEnum;->VERSIONS:Lcom/obs/services/model/SpecialParamEnum;

    .line 87
    new-instance v0, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v1, 0xf

    const-string v2, "delete"

    move-object/from16 v18, v3

    const-string v3, "DELETE"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->DELETE:Lcom/obs/services/model/SpecialParamEnum;

    .line 92
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x10

    const-string v3, "restore"

    move-object/from16 v19, v0

    const-string v0, "RESTORE"

    invoke-direct {v1, v0, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->RESTORE:Lcom/obs/services/model/SpecialParamEnum;

    .line 97
    new-instance v0, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x11

    const-string v3, "tagging"

    move-object/from16 v20, v1

    const-string v1, "TAGGING"

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->TAGGING:Lcom/obs/services/model/SpecialParamEnum;

    .line 102
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x12

    const-string v3, "notification"

    move-object/from16 v21, v0

    const-string v0, "NOTIFICATION"

    invoke-direct {v1, v0, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->NOTIFICATION:Lcom/obs/services/model/SpecialParamEnum;

    .line 107
    new-instance v0, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x13

    const-string v3, "replication"

    move-object/from16 v22, v1

    const-string v1, "REPLICATION"

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->REPLICATION:Lcom/obs/services/model/SpecialParamEnum;

    .line 112
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x14

    const-string v3, "replication_progress"

    move-object/from16 v23, v0

    const-string v0, "REPLICATION_PROGRESS"

    invoke-direct {v1, v0, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->REPLICATION_PROGRESS:Lcom/obs/services/model/SpecialParamEnum;

    .line 116
    new-instance v0, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x15

    const-string v3, "ruleId"

    move-object/from16 v24, v1

    const-string v1, "RULE_ID"

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->RULE_ID:Lcom/obs/services/model/SpecialParamEnum;

    .line 120
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x16

    const-string v3, "append"

    move-object/from16 v25, v0

    const-string v0, "APPEND"

    invoke-direct {v1, v0, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->APPEND:Lcom/obs/services/model/SpecialParamEnum;

    .line 125
    new-instance v0, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x17

    const-string v3, "rename"

    move-object/from16 v26, v1

    const-string v1, "RENAME"

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->RENAME:Lcom/obs/services/model/SpecialParamEnum;

    .line 130
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x18

    const-string v3, "truncate"

    move-object/from16 v27, v0

    const-string v0, "TRUNCATE"

    invoke-direct {v1, v0, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->TRUNCATE:Lcom/obs/services/model/SpecialParamEnum;

    .line 135
    new-instance v0, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x19

    const-string v3, "modify"

    move-object/from16 v28, v1

    const-string v1, "MODIFY"

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->MODIFY:Lcom/obs/services/model/SpecialParamEnum;

    .line 140
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x1a

    const-string v3, "fileinterface"

    move-object/from16 v29, v0

    const-string v0, "FILEINTERFACE"

    invoke-direct {v1, v0, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->FILEINTERFACE:Lcom/obs/services/model/SpecialParamEnum;

    .line 145
    new-instance v0, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x1b

    const-string v3, "metadata"

    move-object/from16 v30, v1

    const-string v1, "METADATA"

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->METADATA:Lcom/obs/services/model/SpecialParamEnum;

    .line 150
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x1c

    const-string v3, "encryption"

    move-object/from16 v31, v0

    const-string v0, "ENCRYPTION"

    invoke-direct {v1, v0, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->ENCRYPTION:Lcom/obs/services/model/SpecialParamEnum;

    .line 155
    new-instance v0, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x1d

    const-string v3, "listcontentsummary"

    move-object/from16 v32, v1

    const-string v1, "LISTCONTENTSUMMARY"

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->LISTCONTENTSUMMARY:Lcom/obs/services/model/SpecialParamEnum;

    .line 160
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x1e

    const-string v3, "multilistcontentsummary"

    move-object/from16 v33, v0

    const-string v0, "LISTCONTENTSUMMARYFS"

    invoke-direct {v1, v0, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->LISTCONTENTSUMMARYFS:Lcom/obs/services/model/SpecialParamEnum;

    .line 165
    new-instance v0, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x1f

    const-string v3, "getcontentsummary"

    move-object/from16 v34, v1

    const-string v1, "GETCONTENTSUMMARY"

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->GETCONTENTSUMMARY:Lcom/obs/services/model/SpecialParamEnum;

    .line 167
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x20

    const-string v3, "accesslabel"

    move-object/from16 v35, v0

    const-string v0, "ACCESSLABEL"

    invoke-direct {v1, v0, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->ACCESSLABEL:Lcom/obs/services/model/SpecialParamEnum;

    .line 172
    new-instance v0, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x21

    const-string v3, "directcoldaccess"

    move-object/from16 v36, v1

    const-string v1, "DIRECTCOLDACCESS"

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->DIRECTCOLDACCESS:Lcom/obs/services/model/SpecialParamEnum;

    .line 177
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x22

    const-string v3, "obsbucketalias"

    move-object/from16 v37, v0

    const-string v0, "OBSBUCKETALIAS"

    invoke-direct {v1, v0, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->OBSBUCKETALIAS:Lcom/obs/services/model/SpecialParamEnum;

    .line 182
    new-instance v0, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x23

    const-string v3, "obsalias"

    move-object/from16 v38, v1

    const-string v1, "OBSALIAS"

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->OBSALIAS:Lcom/obs/services/model/SpecialParamEnum;

    .line 187
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x24

    const-string v3, "customdomain"

    move-object/from16 v39, v0

    const-string v0, "CUSTOMDOMAIN"

    invoke-direct {v1, v0, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->CUSTOMDOMAIN:Lcom/obs/services/model/SpecialParamEnum;

    .line 189
    new-instance v0, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x25

    const-string v3, "id"

    move-object/from16 v40, v1

    const-string v1, "ID"

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->ID:Lcom/obs/services/model/SpecialParamEnum;

    .line 191
    new-instance v1, Lcom/obs/services/model/SpecialParamEnum;

    const/16 v2, 0x26

    const-string v3, "inventory"

    move-object/from16 v41, v0

    const-string v0, "INVENTORY"

    invoke-direct {v1, v0, v2, v3}, Lcom/obs/services/model/SpecialParamEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/SpecialParamEnum;->INVENTORY:Lcom/obs/services/model/SpecialParamEnum;

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v23, v26

    move-object/from16 v24, v27

    move-object/from16 v26, v29

    move-object/from16 v27, v30

    move-object/from16 v29, v32

    move-object/from16 v30, v33

    move-object/from16 v32, v35

    move-object/from16 v33, v36

    move-object/from16 v35, v38

    move-object/from16 v36, v39

    move-object/from16 v38, v41

    move-object/from16 v39, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v25

    move-object/from16 v25, v28

    move-object/from16 v28, v31

    move-object/from16 v31, v34

    move-object/from16 v34, v37

    move-object/from16 v37, v40

    .line 22
    filled-new-array/range {v1 .. v39}, [Lcom/obs/services/model/SpecialParamEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/SpecialParamEnum;->$VALUES:[Lcom/obs/services/model/SpecialParamEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-eqz p3, :cond_8

    .line 202
    iput-object p3, p0, Lcom/obs/services/model/SpecialParamEnum;->stringCode:Ljava/lang/String;

    return-void

    .line 200
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "stringCode is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getValueFromStringCode(Ljava/lang/String;)Lcom/obs/services/model/SpecialParamEnum;
    .registers 7

    if-eqz p0, :cond_28

    .line 218
    invoke-static {}, Lcom/obs/services/model/SpecialParamEnum;->values()[Lcom/obs/services/model/SpecialParamEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    .line 219
    invoke-virtual {v3}, Lcom/obs/services/model/SpecialParamEnum;->getStringCode()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    return-object v3

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 224
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "string code is illegal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 215
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "string code is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/SpecialParamEnum;
    .registers 2

    .line 22
    const-class v0, Lcom/obs/services/model/SpecialParamEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/SpecialParamEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/SpecialParamEnum;
    .registers 1

    .line 22
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->$VALUES:[Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/SpecialParamEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/SpecialParamEnum;

    return-object v0
.end method


# virtual methods
.method public getOriginalStringCode()Ljava/lang/String;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/obs/services/model/SpecialParamEnum;->stringCode:Ljava/lang/String;

    return-object p0
.end method

.method public getStringCode()Ljava/lang/String;
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/obs/services/model/SpecialParamEnum;->stringCode:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
