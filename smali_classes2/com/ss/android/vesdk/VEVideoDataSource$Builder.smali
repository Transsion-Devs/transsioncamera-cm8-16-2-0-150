.class public Lcom/ss/android/vesdk/VEVideoDataSource$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEVideoDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExportVideoDataSource:Lcom/ss/android/vesdk/VEVideoDataSource;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/ss/android/vesdk/VEVideoDataSource;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEVideoDataSource;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoDataSource$Builder;->mExportVideoDataSource:Lcom/ss/android/vesdk/VEVideoDataSource;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VEVideoDataSource;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoDataSource$Builder;->mExportVideoDataSource:Lcom/ss/android/vesdk/VEVideoDataSource;

    return-void
.end method


# virtual methods
.method public build()Lcom/ss/android/vesdk/VEVideoDataSource;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoDataSource$Builder;->mExportVideoDataSource:Lcom/ss/android/vesdk/VEVideoDataSource;

    return-object p0
.end method

.method public setOutputMode(Lcom/ss/android/vesdk/VEDataSource$OutputMode;)Lcom/ss/android/vesdk/VEVideoDataSource$Builder;
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoDataSource$Builder;->mExportVideoDataSource:Lcom/ss/android/vesdk/VEVideoDataSource;

    iput-object p1, v0, Lcom/ss/android/vesdk/VEDataSource;->mMode:Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    return-object p0
.end method

.method public setVideoCapture(Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;)Lcom/ss/android/vesdk/VEVideoDataSource$Builder;
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoDataSource$Builder;->mExportVideoDataSource:Lcom/ss/android/vesdk/VEVideoDataSource;

    # setter for: Lcom/ss/android/vesdk/VEVideoDataSource;->mVideoCapture:Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoDataSource;->access$002(Lcom/ss/android/vesdk/VEVideoDataSource;Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;)Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;

    return-object p0
.end method
