.class public final enum Lcom/tetras/hand/model/HandConfig$TrackThreadCount;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tetras/hand/model/HandConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackThreadCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tetras/hand/model/HandConfig$TrackThreadCount;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

.field public static final enum DEFAULT_CONFIG:Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

.field public static final enum TWO_THREAD:Lcom/tetras/hand/model/HandConfig$TrackThreadCount;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 61
    new-instance v0, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    const-string v1, "DEFAULT_CONFIG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->DEFAULT_CONFIG:Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    .line 62
    new-instance v1, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    const/4 v2, 0x1

    const/high16 v3, 0x10000

    const-string v4, "TWO_THREAD"

    invoke-direct {v1, v4, v2, v3}, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->TWO_THREAD:Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    .line 59
    filled-new-array {v0, v1}, [Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    move-result-object v0

    sput-object v0, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->$VALUES:[Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tetras/hand/model/HandConfig$TrackThreadCount;
    .registers 2

    .line 59
    const-class v0, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    return-object p0
.end method

.method public static values()[Lcom/tetras/hand/model/HandConfig$TrackThreadCount;
    .registers 1

    .line 59
    sget-object v0, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->$VALUES:[Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    invoke-virtual {v0}, [Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 71
    iget p0, p0, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->value:I

    return p0
.end method
