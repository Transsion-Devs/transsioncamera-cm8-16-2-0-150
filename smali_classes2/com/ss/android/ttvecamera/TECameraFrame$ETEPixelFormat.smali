.class public final enum Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ETEPixelFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_ARGB8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_BGR8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_BGRA8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_BUFFER:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_Count:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_GRAY8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_JPEG:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_NV12:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_NV21:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_OpenGL_GRAY:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_OpenGL_RGB8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_OpenGL_RGBA8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_RAW_SENSOR:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_RGB8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_RGBA8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_Recorder:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_UYVY422:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_YUV420:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_YUV420P:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_YUV422P:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public static final enum PIXEL_FORMAT_YUYV422:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 31
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_YUV420"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 32
    new-instance v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_YUV420P"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420P:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 33
    new-instance v3, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_NV12"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_NV12:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 34
    new-instance v4, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_NV21"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_NV21:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 36
    new-instance v5, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_YUYV422"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUYV422:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 37
    new-instance v6, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_YUV422P"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV422P:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 38
    new-instance v7, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_UYVY422"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_UYVY422:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 40
    new-instance v8, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_GRAY8"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_GRAY8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 41
    new-instance v9, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_RGB8"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_RGB8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 42
    new-instance v10, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_BGR8"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_BGR8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 43
    new-instance v11, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_ARGB8"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_ARGB8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 44
    new-instance v12, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_RGBA8"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_RGBA8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 45
    new-instance v13, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_BGRA8"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_BGRA8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 46
    new-instance v14, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_OpenGL_GRAY"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_GRAY:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 47
    new-instance v15, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v0, "PIXEL_FORMAT_OpenGL_RGB8"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_RGB8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 48
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v1, "PIXEL_FORMAT_OpenGL_RGBA8"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_RGBA8:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 50
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v2, "PIXEL_FORMAT_OpenGL_OES"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 51
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v2, "PIXEL_FORMAT_JPEG"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_JPEG:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 52
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v2, "PIXEL_FORMAT_BUFFER"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_BUFFER:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 53
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v2, "PIXEL_FORMAT_Count"

    move-object/from16 v21, v1

    const/16 v1, 0x13

    invoke-direct {v0, v2, v1}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Count:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 54
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v2, "PIXEL_FORMAT_Recorder"

    move-object/from16 v22, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Recorder:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 55
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const-string v2, "PIXEL_FORMAT_RAW_SENSOR"

    move-object/from16 v23, v1

    const/16 v1, 0x15

    invoke-direct {v0, v2, v1}, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_RAW_SENSOR:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v0

    .line 30
    filled-new-array/range {v1 .. v22}, [Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->$VALUES:[Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;
    .registers 2

    .line 30
    const-class v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;
    .registers 1

    .line 30
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->$VALUES:[Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    invoke-virtual {v0}, [Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object v0
.end method
