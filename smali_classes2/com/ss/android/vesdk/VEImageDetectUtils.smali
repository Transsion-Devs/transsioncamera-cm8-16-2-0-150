.class public Lcom/ss/android/vesdk/VEImageDetectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageEnigmaResultListener;,
        Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultWithNumListener;,
        Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VEImageDetectUtils"


# instance fields
.field private mDetectEnigmaResultListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageEnigmaResultListener;

.field private mDetectResultListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;

.field private mDetectResultWithNumListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultWithNumListener;

.field private mInterruptDetectImageContent:Z

.field private mNativeHandler:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 26
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mNativeHandler:J

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mInterruptDetectImageContent:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mDetectResultListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;

    .line 33
    iput-object v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mDetectResultWithNumListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultWithNumListener;

    .line 34
    iput-object v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mDetectEnigmaResultListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageEnigmaResultListener;

    return-void
.end method

.method private native nativeDestroy(J)I
.end method

.method private native nativeDetectImageContent(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)I
.end method

.method private native nativeDetectImageEnigma(JLjava/lang/String;II)I
.end method

.method private native nativeInit(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)J
.end method


# virtual methods
.method public destroy()I
    .registers 6

    .line 64
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    .line 65
    sget-object p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    const-string v0, "invoke destroy() encounter handler == 0. Consider destroy() has been called already?"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 68
    :cond_11
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/VEImageDetectUtils;->nativeDestroy(J)I

    move-result v0

    if-nez v0, :cond_20

    .line 70
    iput-wide v2, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mNativeHandler:J

    .line 71
    sget-object v1, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    const-string v2, "NativeHandler destroy succeed."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mDetectResultListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;

    return v0
.end method

.method public detectImageContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)I"
        }
    .end annotation

    .line 91
    const-string v0, "content"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, -0x64

    if-nez v0, :cond_31

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    .line 92
    sget-object p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal argument. file: \""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" is not exist."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 95
    :cond_31
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 96
    sget-object p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    const-string p1, "Unexpected argument. scanAlgorithmList is empty?"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 100
    :cond_3f
    sget-object v0, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detectImageContent... stickerId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", imagePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", maxWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 103
    invoke-interface {p3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 104
    iget-wide v2, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mNativeHandler:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/ss/android/vesdk/VEImageDetectUtils;->nativeDetectImageContent(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public detectImageEnigma(Ljava/lang/String;II)I
    .registers 12

    .line 185
    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    .line 186
    sget-object p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal argument. file: \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 190
    :cond_31
    sget-object v0, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detectImageEnigma..., imagePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", maxWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-wide v3, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mNativeHandler:J

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/vesdk/VEImageDetectUtils;->nativeDetectImageEnigma(JLjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public detectImagesContent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 151
    monitor-enter p0

    const/4 v0, 0x0

    .line 152
    :try_start_2
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mInterruptDetectImageContent:Z

    .line 153
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_73

    .line 154
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 155
    sget-object p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    const-string p1, "Unexpected argument. scanAlgorithmList is empty?"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_13
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Ljava/lang/String;

    .line 160
    invoke-interface {p3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 162
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    :goto_20
    if-ge v0, p3, :cond_72

    .line 163
    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mInterruptDetectImageContent:Z

    if-nez v1, :cond_72

    .line 164
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 166
    sget-object v2, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument. file: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" is not exist."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v5, p1

    goto :goto_6d

    .line 170
    :cond_5d
    iget-wide v3, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mNativeHandler:J

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/ss/android/vesdk/VEImageDetectUtils;->nativeDetectImageContent(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)I

    :goto_6d
    add-int/lit8 v0, v0, 0x1

    move-object p0, v2

    move-object p1, v5

    goto :goto_20

    :cond_72
    return-void

    :catchall_73
    move-exception v0

    move-object v2, p0

    :goto_75
    move-object p0, v0

    .line 153
    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_78

    throw p0

    :catchall_78
    move-exception v0

    goto :goto_75
.end method

.method public detectImagesContentWithSize(Ljava/lang/String;Ljava/util/List;Ljava/util/List;II)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 118
    monitor-enter p0

    const/4 v0, 0x0

    .line 119
    :try_start_2
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mInterruptDetectImageContent:Z

    .line 120
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_77

    .line 121
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 122
    sget-object p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    const-string p1, "Unexpected argument. scanAlgorithmList is empty?"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_13
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Ljava/lang/String;

    .line 127
    invoke-interface {p3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 129
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    :goto_20
    if-ge v0, p3, :cond_76

    .line 130
    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mInterruptDetectImageContent:Z

    if-nez v1, :cond_76

    .line 131
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 133
    sget-object v2, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument. file: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" is not exist."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v5, p1

    move v8, p4

    move v9, p5

    goto :goto_6f

    .line 137
    :cond_5f
    iget-wide v3, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mNativeHandler:J

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    move-object v2, p0

    move-object v5, p1

    move v8, p4

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/ss/android/vesdk/VEImageDetectUtils;->nativeDetectImageContent(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)I

    :goto_6f
    add-int/lit8 v0, v0, 0x1

    move-object p0, v2

    move-object p1, v5

    move p4, v8

    move p5, v9

    goto :goto_20

    :cond_76
    return-void

    :catchall_77
    move-exception v0

    move-object v2, p0

    :goto_79
    move-object p0, v0

    .line 120
    :try_start_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7c

    throw p0

    :catchall_7c
    move-exception v0

    goto :goto_79
.end method

.method public init()I
    .registers 9

    .line 45
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->getEnv()Lcom/ss/android/vesdk/runtime/VEEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getDetectModelsDir()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v6, 0x0

    .line 48
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->getCacheDir()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    .line 42
    invoke-direct/range {v1 .. v7}, Lcom/ss/android/vesdk/VEImageDetectUtils;->nativeInit(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_22

    const/4 p0, -0x1

    return p0

    .line 54
    :cond_22
    iput-wide v2, v1, Lcom/ss/android/vesdk/VEImageDetectUtils;->mNativeHandler:J

    const/4 p0, 0x0

    return p0
.end method

.method public onNativeCallback_onDetectImageContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 8
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mDetectResultListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;

    if-nez v0, :cond_10

    iget-object v1, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mDetectResultWithNumListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultWithNumListener;

    if-nez v1, :cond_10

    .line 256
    sget-object p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    const-string p1, "Native callback onDetectImageContent encounter no listener handle?"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    if-eqz v0, :cond_15

    .line 260
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;->onDetectResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 262
    :cond_15
    iget-object p0, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mDetectResultWithNumListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultWithNumListener;

    if-eqz p0, :cond_1c

    .line 263
    invoke-interface {p0, p1, p2, p3, p5}, Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultWithNumListener;->onDetectResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1c
    return-void
.end method

.method public onNativeCallback_onDetectImageEnigma(Lcom/ss/android/medialib/model/EnigmaResult;)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 273
    iget-object p0, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mDetectEnigmaResultListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageEnigmaResultListener;

    if-nez p0, :cond_c

    .line 274
    sget-object p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->TAG:Ljava/lang/String;

    const-string p1, "Native callback onDetectImageEnigma encounter no listener handle?"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    if-eqz p0, :cond_11

    .line 279
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageEnigmaResultListener;->onDetectResult(Lcom/ss/android/medialib/model/EnigmaResult;)V

    :cond_11
    return-void
.end method

.method public setDetectImageContentListener(Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mDetectResultListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;

    return-void
.end method

.method public setDetectImageContentWithNumListener(Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultWithNumListener;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mDetectResultWithNumListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultWithNumListener;

    return-void
.end method

.method public setDetectImageEnigmaListener(Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageEnigmaResultListener;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mDetectEnigmaResultListener:Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageEnigmaResultListener;

    return-void
.end method

.method public declared-synchronized stopDetectImagesContentIfNeed()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 201
    :try_start_2
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtils;->mInterruptDetectImageContent:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 202
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method
