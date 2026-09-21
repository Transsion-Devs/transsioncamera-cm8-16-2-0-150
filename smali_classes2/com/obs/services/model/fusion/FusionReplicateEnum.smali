.class public final enum Lcom/obs/services/model/fusion/FusionReplicateEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/fusion/FusionReplicateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/fusion/FusionReplicateEnum;

.field public static final enum ASYNC:Lcom/obs/services/model/fusion/FusionReplicateEnum;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 21
    new-instance v0, Lcom/obs/services/model/fusion/FusionReplicateEnum;

    const/4 v1, 0x0

    const-string v2, "async"

    const-string v3, "ASYNC"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/fusion/FusionReplicateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/fusion/FusionReplicateEnum;->ASYNC:Lcom/obs/services/model/fusion/FusionReplicateEnum;

    .line 17
    filled-new-array {v0}, [Lcom/obs/services/model/fusion/FusionReplicateEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/fusion/FusionReplicateEnum;->$VALUES:[Lcom/obs/services/model/fusion/FusionReplicateEnum;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/obs/services/model/fusion/FusionReplicateEnum;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/fusion/FusionReplicateEnum;
    .registers 2

    .line 17
    const-class v0, Lcom/obs/services/model/fusion/FusionReplicateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fusion/FusionReplicateEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/fusion/FusionReplicateEnum;
    .registers 1

    .line 17
    sget-object v0, Lcom/obs/services/model/fusion/FusionReplicateEnum;->$VALUES:[Lcom/obs/services/model/fusion/FusionReplicateEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/fusion/FusionReplicateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/fusion/FusionReplicateEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/obs/services/model/fusion/FusionReplicateEnum;->code:Ljava/lang/String;

    return-object p0
.end method
