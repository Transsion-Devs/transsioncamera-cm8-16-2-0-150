.class public interface abstract Lcom/bytedance/ugc/recorder/camera/ICameraSettting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ugc/recorder/camera/ICameraSettting$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract attachSurface(Landroid/view/SurfaceView;)V
.end method

.method public abstract changeModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
.end method

.method public abstract returnPreView()V
.end method

.method public abstract startPrePlay()V
.end method

.method public abstract stopPrePlay(Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation
.end method

.method public abstract switch(II)V
.end method

.method public abstract switchSlot(Landroid/content/Context;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEModel;ZZ)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
.end method
