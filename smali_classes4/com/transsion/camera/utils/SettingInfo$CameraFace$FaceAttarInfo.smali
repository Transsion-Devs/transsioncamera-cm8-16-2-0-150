.class public Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/SettingInfo$CameraFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceAttarInfo"
.end annotation


# instance fields
.field private mAge:I

.field private mDx:F

.field private mDy:F

.field public mGender:I

.field public mId:I

.field public mRace:I

.field public mSkinColor:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAge(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mAge:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDx(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mDx:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDy(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mDy:F

    return p0
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 3209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3210
    iput p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mId:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 3222
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 6

    .line 3213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3214
    iput p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mId:I

    .line 3215
    iput p2, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mGender:I

    .line 3216
    iput p3, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mAge:I

    int-to-float p1, p4

    .line 3217
    iput p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mDx:F

    int-to-float p1, p5

    .line 3218
    iput p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mDy:F

    return-void
.end method
