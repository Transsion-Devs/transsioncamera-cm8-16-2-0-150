.class final enum Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CamWithVideoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

.field public static final enum CAM_WITH_VIDEO_TYPE_DUET:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

.field public static final enum CAM_WITH_VIDEO_TYPE_KARAOKE:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

.field public static final enum CAM_WITH_VIDEO_TYPE_KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

.field public static final enum CAM_WITH_VIDEO_TYPE_NORMAL:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

.field public static final enum CAM_WITH_VIDEO_TYPE_REACTION:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

.field public static final enum CAM_WITH_VIDEO_TYPE_VIDEO_BG:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

.field public static final enum CAM_WITH_VIDEO_TYPE_VIDEO_GIF_BG:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 231
    new-instance v0, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    const-string v1, "CAM_WITH_VIDEO_TYPE_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_NORMAL:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 232
    new-instance v1, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    const-string v2, "CAM_WITH_VIDEO_TYPE_DUET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_DUET:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 233
    new-instance v2, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    const-string v3, "CAM_WITH_VIDEO_TYPE_REACTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_REACTION:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 234
    new-instance v3, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    const-string v4, "CAM_WITH_VIDEO_TYPE_VIDEO_BG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_VIDEO_BG:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 235
    new-instance v4, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    const-string v5, "CAM_WITH_VIDEO_TYPE_KARAOKE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_KARAOKE:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 236
    new-instance v5, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    const-string v6, "CAM_WITH_VIDEO_TYPE_KARAOKE_PURE_AUDIO"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 237
    new-instance v6, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    const-string v7, "CAM_WITH_VIDEO_TYPE_VIDEO_GIF_BG"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_VIDEO_GIF_BG:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 230
    filled-new-array/range {v0 .. v6}, [Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->$VALUES:[Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;
    .registers 2

    .line 230
    const-class v0, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;
    .registers 1

    .line 230
    sget-object v0, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->$VALUES:[Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    return-object v0
.end method
