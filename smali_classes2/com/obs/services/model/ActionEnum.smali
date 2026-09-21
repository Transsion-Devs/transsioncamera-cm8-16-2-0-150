.class public final enum Lcom/obs/services/model/ActionEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/ActionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/ActionEnum;

.field public static final enum DEFAULT:Lcom/obs/services/model/ActionEnum;

.field public static final enum FALSE:Lcom/obs/services/model/ActionEnum;

.field public static final enum TRUE:Lcom/obs/services/model/ActionEnum;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 18
    new-instance v0, Lcom/obs/services/model/ActionEnum;

    const/4 v1, 0x0

    const-string v2, "default"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/ActionEnum;->DEFAULT:Lcom/obs/services/model/ActionEnum;

    .line 20
    new-instance v1, Lcom/obs/services/model/ActionEnum;

    const/4 v2, 0x1

    const-string v3, "true"

    const-string v4, "TRUE"

    invoke-direct {v1, v4, v2, v3}, Lcom/obs/services/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/ActionEnum;->TRUE:Lcom/obs/services/model/ActionEnum;

    .line 22
    new-instance v2, Lcom/obs/services/model/ActionEnum;

    const/4 v3, 0x2

    const-string v4, "false"

    const-string v5, "FALSE"

    invoke-direct {v2, v5, v3, v4}, Lcom/obs/services/model/ActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/obs/services/model/ActionEnum;->FALSE:Lcom/obs/services/model/ActionEnum;

    .line 17
    filled-new-array {v0, v1, v2}, [Lcom/obs/services/model/ActionEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/ActionEnum;->$VALUES:[Lcom/obs/services/model/ActionEnum;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/obs/services/model/ActionEnum;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/ActionEnum;
    .registers 2

    .line 17
    const-class v0, Lcom/obs/services/model/ActionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ActionEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/ActionEnum;
    .registers 1

    .line 17
    sget-object v0, Lcom/obs/services/model/ActionEnum;->$VALUES:[Lcom/obs/services/model/ActionEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/ActionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/ActionEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/obs/services/model/ActionEnum;->code:Ljava/lang/String;

    return-object p0
.end method
