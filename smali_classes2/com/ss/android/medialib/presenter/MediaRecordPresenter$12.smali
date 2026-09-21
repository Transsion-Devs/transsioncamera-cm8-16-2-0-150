.class Lcom/ss/android/medialib/presenter/MediaRecordPresenter$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/listener/TextureTimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)V
    .registers 2

    .line 2735
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$12;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextureDeltaTime(Z)J
    .registers 4

    .line 2738
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$12;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    # invokes: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getTextureDelta(Landroid/graphics/SurfaceTexture;)J
    invoke-static {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$200(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Landroid/graphics/SurfaceTexture;)J

    move-result-wide p0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0
.end method
