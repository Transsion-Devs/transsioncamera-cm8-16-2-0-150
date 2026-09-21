.class public final enum Lcom/obs/services/model/AuthTypeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/AuthTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/AuthTypeEnum;

.field public static final enum OBS:Lcom/obs/services/model/AuthTypeEnum;

.field public static final enum V2:Lcom/obs/services/model/AuthTypeEnum;

.field public static final enum V4:Lcom/obs/services/model/AuthTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 25
    new-instance v0, Lcom/obs/services/model/AuthTypeEnum;

    const-string v1, "V2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/obs/services/model/AuthTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/obs/services/model/AuthTypeEnum;->V2:Lcom/obs/services/model/AuthTypeEnum;

    .line 29
    new-instance v1, Lcom/obs/services/model/AuthTypeEnum;

    const-string v2, "OBS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/obs/services/model/AuthTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    .line 34
    new-instance v2, Lcom/obs/services/model/AuthTypeEnum;

    const-string v3, "V4"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/obs/services/model/AuthTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/obs/services/model/AuthTypeEnum;->V4:Lcom/obs/services/model/AuthTypeEnum;

    .line 21
    filled-new-array {v0, v1, v2}, [Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/AuthTypeEnum;->$VALUES:[Lcom/obs/services/model/AuthTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    .registers 2

    .line 21
    const-class v0, Lcom/obs/services/model/AuthTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/AuthTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/AuthTypeEnum;
    .registers 1

    .line 21
    sget-object v0, Lcom/obs/services/model/AuthTypeEnum;->$VALUES:[Lcom/obs/services/model/AuthTypeEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/AuthTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/AuthTypeEnum;

    return-object v0
.end method
