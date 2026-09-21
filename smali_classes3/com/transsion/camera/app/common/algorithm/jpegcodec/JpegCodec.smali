.class public final Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "JpegCodec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 26
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->sInstance:Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    .line 31
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "com.transsion.camera.feature.jpegcodec.JpegCodecImpl"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public static jpegEncode([BIII)[B
    .registers 5

    const/16 v0, 0x64

    .line 41
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegEncode([BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static jpegEncode([BIIII)[B
    .registers 14

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p2

    move v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 46
    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegEncode([BIIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static jpegEncode([BIIIIIIIZ)[B
    .registers 19

    .line 58
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->sInstance:Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegEncodeImpl([BIIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static jpegEncode([BIIIIIIZ)[B
    .registers 17

    const/16 v6, 0x64

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    move/from16 v8, p7

    .line 52
    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegEncode([BIIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method private jpegEncodeImpl([BIIIIIIIZ)[B
    .registers 10

    .line 98
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mJpegCodecImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static jpegSoftEncode([BIIIIIIIZ)[B
    .registers 19

    .line 80
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->sInstance:Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegSoftEncodeImpl([BIIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static jpegSoftEncode([BIIIIIIZ)[B
    .registers 17

    const/16 v6, 0x64

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    move/from16 v8, p7

    .line 74
    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegSoftEncode([BIIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method private jpegSoftEncodeImpl([BIIIIIIIZ)[B
    .registers 10

    .line 109
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mJpegCodecImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static transform([BIIIIIIZ)[B
    .registers 17

    .line 36
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->sInstance:Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->transformImpl([BIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method private transformImpl([BIIIIIIZ)[B
    .registers 9

    .line 87
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mJpegCodecImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
