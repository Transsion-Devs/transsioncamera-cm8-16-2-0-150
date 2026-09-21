.class public final enum Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stmobile/facebasejni/common/FaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackThreadCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

.field public static final enum DEFAULT_CONFIG:Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

.field public static final enum TWO_THREAD:Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 57
    new-instance v0, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

    const-string v1, "DEFAULT_CONFIG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;->DEFAULT_CONFIG:Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

    .line 58
    new-instance v1, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

    const/4 v2, 0x1

    const/high16 v3, 0x110000

    const-string v4, "TWO_THREAD"

    invoke-direct {v1, v4, v2, v3}, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;->TWO_THREAD:Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

    .line 55
    filled-new-array {v0, v1}, [Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

    move-result-object v0

    sput-object v0, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;->$VALUES:[Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;
    .registers 2

    .line 55
    const-class v0, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

    return-object p0
.end method

.method public static values()[Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;
    .registers 1

    .line 55
    sget-object v0, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;->$VALUES:[Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

    invoke-virtual {v0}, [Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 67
    iget p0, p0, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;->value:I

    return p0
.end method
