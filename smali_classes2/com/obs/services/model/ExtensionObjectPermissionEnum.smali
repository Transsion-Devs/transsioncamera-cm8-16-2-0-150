.class public final enum Lcom/obs/services/model/ExtensionObjectPermissionEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/ExtensionObjectPermissionEnum;

.field public static final enum GRANT_FULL_CONTROL:Lcom/obs/services/model/ExtensionObjectPermissionEnum;

.field public static final enum GRANT_READ:Lcom/obs/services/model/ExtensionObjectPermissionEnum;

.field public static final enum GRANT_READ_ACP:Lcom/obs/services/model/ExtensionObjectPermissionEnum;

.field public static final enum GRANT_WRITE_ACP:Lcom/obs/services/model/ExtensionObjectPermissionEnum;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 27
    new-instance v0, Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    const/4 v1, 0x0

    const-string v2, "grantReadHeader"

    const-string v3, "GRANT_READ"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/ExtensionObjectPermissionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/ExtensionObjectPermissionEnum;->GRANT_READ:Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    .line 33
    new-instance v1, Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    const/4 v2, 0x1

    const-string v3, "grantReadAcpHeader"

    const-string v4, "GRANT_READ_ACP"

    invoke-direct {v1, v4, v2, v3}, Lcom/obs/services/model/ExtensionObjectPermissionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/ExtensionObjectPermissionEnum;->GRANT_READ_ACP:Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    .line 39
    new-instance v2, Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    const/4 v3, 0x2

    const-string v4, "grantWriteAcpHeader"

    const-string v5, "GRANT_WRITE_ACP"

    invoke-direct {v2, v5, v3, v4}, Lcom/obs/services/model/ExtensionObjectPermissionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/obs/services/model/ExtensionObjectPermissionEnum;->GRANT_WRITE_ACP:Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    .line 47
    new-instance v3, Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    const/4 v4, 0x3

    const-string v5, "grantFullControlHeader"

    const-string v6, "GRANT_FULL_CONTROL"

    invoke-direct {v3, v6, v4, v5}, Lcom/obs/services/model/ExtensionObjectPermissionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/obs/services/model/ExtensionObjectPermissionEnum;->GRANT_FULL_CONTROL:Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    .line 22
    filled-new-array {v0, v1, v2, v3}, [Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/ExtensionObjectPermissionEnum;->$VALUES:[Lcom/obs/services/model/ExtensionObjectPermissionEnum;

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/obs/services/model/ExtensionObjectPermissionEnum;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/ExtensionObjectPermissionEnum;
    .registers 2

    .line 22
    const-class v0, Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/ExtensionObjectPermissionEnum;
    .registers 1

    .line 22
    sget-object v0, Lcom/obs/services/model/ExtensionObjectPermissionEnum;->$VALUES:[Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/ExtensionObjectPermissionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/obs/services/model/ExtensionObjectPermissionEnum;->code:Ljava/lang/String;

    return-object p0
.end method
