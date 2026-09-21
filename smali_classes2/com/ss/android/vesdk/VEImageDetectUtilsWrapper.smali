.class public Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized detectImageContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;",
            "II)V"
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_1
    new-instance v0, Lcom/ss/android/vesdk/VEImageDetectUtils;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEImageDetectUtils;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    .line 68
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEImageDetectUtils;->init()I

    .line 69
    iget-object v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    invoke-virtual {v0, p4}, Lcom/ss/android/vesdk/VEImageDetectUtils;->setDetectImageContentListener(Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;)V

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    .line 70
    iget-object p1, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    invoke-virtual/range {p1 .. p6}, Lcom/ss/android/vesdk/VEImageDetectUtils;->detectImageContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)I

    .line 71
    iget-object p1, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEImageDetectUtils;->destroy()I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 72
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    move-object p1, v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1f

    throw p1
.end method

.method public declared-synchronized detectImagesContent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 22
    :try_start_1
    new-instance v0, Lcom/ss/android/vesdk/VEImageDetectUtils;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEImageDetectUtils;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    .line 23
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEImageDetectUtils;->init()I

    .line 24
    iget-object v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    invoke-virtual {v0, p4}, Lcom/ss/android/vesdk/VEImageDetectUtils;->setDetectImageContentListener(Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultListener;)V

    .line 25
    iget-object p4, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    invoke-virtual {p4, p1, p2, p3}, Lcom/ss/android/vesdk/VEImageDetectUtils;->detectImagesContent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 26
    iget-object p1, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEImageDetectUtils;->destroy()I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 27
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public declared-synchronized detectImagesContentWithNum(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultWithNumListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultWithNumListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 39
    :try_start_1
    new-instance v0, Lcom/ss/android/vesdk/VEImageDetectUtils;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEImageDetectUtils;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    .line 40
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEImageDetectUtils;->init()I

    .line 41
    iget-object v0, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    invoke-virtual {v0, p4}, Lcom/ss/android/vesdk/VEImageDetectUtils;->setDetectImageContentWithNumListener(Lcom/ss/android/vesdk/VEImageDetectUtils$IDetectImageResultWithNumListener;)V

    .line 42
    iget-object p4, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    invoke-virtual {p4, p1, p2, p3}, Lcom/ss/android/vesdk/VEImageDetectUtils;->detectImagesContent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 43
    iget-object p1, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEImageDetectUtils;->destroy()I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 44
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public stopDetectImagesContentIfNeed()V
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/ss/android/vesdk/VEImageDetectUtilsWrapper;->mUtils:Lcom/ss/android/vesdk/VEImageDetectUtils;

    if-eqz p0, :cond_7

    .line 51
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEImageDetectUtils;->stopDetectImagesContentIfNeed()V

    :cond_7
    return-void
.end method
