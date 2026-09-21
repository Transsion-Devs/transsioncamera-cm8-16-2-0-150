.class public Lcom/ss/android/medialib/FFMpegInvoker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field mFFMpagCaller:Lcom/ss/android/medialib/FFMpegInterface;

.field metaInterface:Lcom/ss/android/medialib/MetaInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 26
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native addFastReverseVideo(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native checkAudioFile(Ljava/lang/String;)I
.end method

.method public native checkMp3File(Ljava/lang/String;)I
.end method

.method public native getFrameCover(Ljava/lang/String;IIII)Lcom/ss/android/medialib/model/CoverInfo;
.end method

.method public native initVideoToGraph(Ljava/lang/String;II)[I
.end method

.method public native isCanImport(Ljava/lang/String;JJ)I
.end method

.method public onNativeCallback_MetaData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 78
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegInvoker;->metaInterface:Lcom/ss/android/medialib/MetaInterface;

    if-eqz p0, :cond_7

    .line 79
    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/MetaInterface;->onMeta(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onNativeCallback_getMetaKey()Ljava/lang/String;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegInvoker;->metaInterface:Lcom/ss/android/medialib/MetaInterface;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/ss/android/medialib/MetaInterface;->getMetaKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public onNativeCallback_progress(I)V
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegInvoker;->mFFMpagCaller:Lcom/ss/android/medialib/FFMpegInterface;

    if-eqz p0, :cond_7

    .line 74
    invoke-interface {p0, p1}, Lcom/ss/android/medialib/FFMpegInterface;->onCutVideoProgress(I)V

    :cond_7
    return-void
.end method

.method public native remuxVideo(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native rencodeAndSplitFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIILjava/lang/String;ILjava/lang/String;FZZIIIIIIILcom/ss/android/medialib/FFMpegManager$EncoderListener;)I
.end method

.method public native resampleCycleAudioToWav(Ljava/lang/String;Ljava/lang/String;JJ)I
.end method

.method public setMetaInterface(Lcom/ss/android/medialib/MetaInterface;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/ss/android/medialib/FFMpegInvoker;->metaInterface:Lcom/ss/android/medialib/MetaInterface;

    return-void
.end method

.method public setmFFMpagCaller(Lcom/ss/android/medialib/FFMpegInterface;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/ss/android/medialib/FFMpegInvoker;->mFFMpagCaller:Lcom/ss/android/medialib/FFMpegInterface;

    return-void
.end method

.method public native stopGetFrameThumbnail()V
.end method

.method public native stopReverseVideo()I
.end method

.method public native uninitVideoToGraph()I
.end method
