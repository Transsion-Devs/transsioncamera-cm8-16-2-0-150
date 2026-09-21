.class public final enum Lcom/obs/services/model/ExtensionBucketPermissionEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/ExtensionBucketPermissionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/ExtensionBucketPermissionEnum;

.field public static final enum GRANT_FULL_CONTROL:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

.field public static final enum GRANT_FULL_CONTROL_DELIVERED:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

.field public static final enum GRANT_READ:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

.field public static final enum GRANT_READ_ACP:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

.field public static final enum GRANT_READ_DELIVERED:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

.field public static final enum GRANT_WRITE:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

.field public static final enum GRANT_WRITE_ACP:Lcom/obs/services/model/ExtensionBucketPermissionEnum;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 28
    new-instance v0, Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    const/4 v1, 0x0

    const-string v2, "grantReadHeader"

    const-string v3, "GRANT_READ"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/ExtensionBucketPermissionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/ExtensionBucketPermissionEnum;->GRANT_READ:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    .line 37
    new-instance v1, Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    const/4 v2, 0x1

    const-string v3, "grantWriteHeader"

    const-string v4, "GRANT_WRITE"

    invoke-direct {v1, v4, v2, v3}, Lcom/obs/services/model/ExtensionBucketPermissionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/ExtensionBucketPermissionEnum;->GRANT_WRITE:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    .line 43
    new-instance v2, Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    const/4 v3, 0x2

    const-string v4, "grantReadAcpHeader"

    const-string v5, "GRANT_READ_ACP"

    invoke-direct {v2, v5, v3, v4}, Lcom/obs/services/model/ExtensionBucketPermissionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/obs/services/model/ExtensionBucketPermissionEnum;->GRANT_READ_ACP:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    .line 49
    new-instance v3, Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    const/4 v4, 0x3

    const-string v5, "grantWriteAcpHeader"

    const-string v6, "GRANT_WRITE_ACP"

    invoke-direct {v3, v6, v4, v5}, Lcom/obs/services/model/ExtensionBucketPermissionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/obs/services/model/ExtensionBucketPermissionEnum;->GRANT_WRITE_ACP:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    .line 54
    new-instance v4, Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    const/4 v5, 0x4

    const-string v6, "grantFullControlHeader"

    const-string v7, "GRANT_FULL_CONTROL"

    invoke-direct {v4, v7, v5, v6}, Lcom/obs/services/model/ExtensionBucketPermissionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/obs/services/model/ExtensionBucketPermissionEnum;->GRANT_FULL_CONTROL:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    .line 62
    new-instance v5, Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    const/4 v6, 0x5

    const-string v7, "grantReadDeliveredHeader"

    const-string v8, "GRANT_READ_DELIVERED"

    invoke-direct {v5, v8, v6, v7}, Lcom/obs/services/model/ExtensionBucketPermissionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/obs/services/model/ExtensionBucketPermissionEnum;->GRANT_READ_DELIVERED:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    .line 70
    new-instance v6, Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    const/4 v7, 0x6

    const-string v8, "grantFullControlDeliveredHeader"

    const-string v9, "GRANT_FULL_CONTROL_DELIVERED"

    invoke-direct {v6, v9, v7, v8}, Lcom/obs/services/model/ExtensionBucketPermissionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/obs/services/model/ExtensionBucketPermissionEnum;->GRANT_FULL_CONTROL_DELIVERED:Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    .line 22
    filled-new-array/range {v0 .. v6}, [Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/ExtensionBucketPermissionEnum;->$VALUES:[Lcom/obs/services/model/ExtensionBucketPermissionEnum;

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

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/obs/services/model/ExtensionBucketPermissionEnum;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/ExtensionBucketPermissionEnum;
    .registers 2

    .line 22
    const-class v0, Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/ExtensionBucketPermissionEnum;
    .registers 1

    .line 22
    sget-object v0, Lcom/obs/services/model/ExtensionBucketPermissionEnum;->$VALUES:[Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/ExtensionBucketPermissionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/ExtensionBucketPermissionEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/obs/services/model/ExtensionBucketPermissionEnum;->code:Ljava/lang/String;

    return-object p0
.end method
