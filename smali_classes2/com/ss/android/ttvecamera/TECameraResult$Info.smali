.class public Lcom/ss/android/ttvecamera/TECameraResult$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Info"
.end annotation


# static fields
.field public static final TEE_CAMERA_ARCORE:I = 0x75

.field public static final TEE_CAMERA_DEFAULT:I = 0x0

.field public static final TEE_CAMERA_EXPOSURE_COMPENSATION:I = 0x73

.field public static final TEE_CAMERA_FLASH_MODE:I = 0x74

.field public static final TEE_CAMERA_NIGHT_OPT:I = 0x76

.field public static final TEE_CAMERA_SLOW_MOTION_DISABLE:I = 0x64

.field public static final TEE_CAMERA_SLOW_MOTION_FINISH:I = 0x67

.field public static final TEE_CAMERA_SLOW_MOTION_READY:I = 0x65

.field public static final TEE_CAMERA_SLOW_MOTION_VIDEO_DONE:I = 0x66

.field public static final TEE_CAMERA_STABLIZATION:I = 0x71

.field public static final TEE_CAMERA_TAKE_PICTURE:I = 0x77

.field public static final TEE_CAMERA_WIDE_ANGLE:I = 0x70

.field public static final TEE_CAMERA_ZOOM:I = 0x72

.field public static final TET_CAMERA_DID_CHANGE_FLASH_MODE:I = 0x69

.field public static final TET_CAMERA_DID_OPEN_CAMERA:I = 0x78

.field public static final TET_CAMERA_DID_START_CAMERA:I = 0x6b

.field public static final TET_CAMERA_DID_STOP_CAMERA:I = 0x6d

.field public static final TET_CAMERA_FEATURE_NOTIFY:I = 0x1

.field public static final TET_CAMERA_FPS_RANGE:I = 0x79

.field public static final TET_CAMERA_PREVIEW:I = 0x0

.field public static final TET_CAMERA_PREVIEW_SIZE:I = 0x32

.field public static final TET_CAMERA_RECREATE_SURFACETEXTURE:I = 0x33

.field public static final TET_CAMERA_SLOW_MOTION:I = 0x64

.field public static final TET_CAMERA_STATUS:I = 0x3

.field public static final TET_CAMERA_STOP_PREVIEW:I = 0x4

.field public static final TET_CAMERA_WARNING:I = 0x2

.field public static final TET_CAMERA_WILL_CHANGE_FLASH_MODE:I = 0x68

.field public static final TET_CAMERA_WILL_START_CAMERA:I = 0x6a

.field public static final TET_CAMERA_WILL_STOP_CAMERA:I = 0x6c


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraResult;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/TECameraResult;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraResult$Info;->this$0:Lcom/ss/android/ttvecamera/TECameraResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
