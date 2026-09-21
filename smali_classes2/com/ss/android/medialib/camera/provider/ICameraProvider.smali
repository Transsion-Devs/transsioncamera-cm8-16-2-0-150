.class public interface abstract Lcom/ss/android/medialib/camera/provider/ICameraProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/camera/provider/ICameraProvider$OnFrameAvailableListener;
    }
.end annotation


# virtual methods
.method public abstract bind(Lcom/ss/android/medialib/presenter/IMediaPresenter;)V
.end method

.method public abstract setBodyBeauty(ZI)V
.end method

.method public abstract setOnFrameAvailableListener(Lcom/ss/android/medialib/camera/provider/ICameraProvider$OnFrameAvailableListener;)V
.end method

.method public abstract startPreview()V
.end method
