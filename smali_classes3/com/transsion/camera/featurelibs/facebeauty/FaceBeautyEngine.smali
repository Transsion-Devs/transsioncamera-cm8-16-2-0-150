.class public Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private closed:Z

.field private final success:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyEngine"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->closed:Z

    .line 23
    sget-object v1, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/itdfacebeauty/jni/ITDFaceBeauty;->ITDFB_JNI_GetVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 24
    invoke-static {v2, v3}, Lcom/itdfacebeauty/jni/ITDFaceBeauty;->ITDFB_JNI_CreateEngine(J)J

    move-result-wide v4

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createEngine: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    cmp-long v1, v4, v2

    if-nez v1, :cond_40

    const/4 v0, 0x1

    .line 26
    :cond_40
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->success:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 35
    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->success:Z

    if-nez v0, :cond_5

    goto :goto_9

    .line 36
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->closed:Z

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->closed:Z

    .line 38
    invoke-static {}, Lcom/itdfacebeauty/jni/ITDFaceBeauty;->ITDFB_JNI_ReleaseEngine()J

    move-result-wide v0

    .line 39
    sget-object p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseEngine, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public process(IIIII)Z
    .registers 6

    .line 53
    filled-new-array {p2}, [I

    move-result-object p0

    invoke-static {p1, p0, p3, p4, p5}, Lcom/itdfacebeauty/jni/ITDFaceBeauty;->ITDFB_JNI_ProcessTexture(I[IIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public setFeature(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;I)V
    .registers 7

    .line 43
    iget p0, p1, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->value:I

    invoke-static {p0, p2}, Lcom/itdfacebeauty/jni/ITDFaceBeauty;->ITDFB_JNI_SetFeature(II)J

    move-result-wide v0

    .line 44
    sget-object p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFeature key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public success()Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->success:Z

    return p0
.end method
