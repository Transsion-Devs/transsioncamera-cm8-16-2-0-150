.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;,
        Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$IDraftEntryListener;,
        Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$SOURCE;
    }
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final EDITOR:I = 0x1


# virtual methods
.method public abstract enter()V
.end method

.method public abstract exit()V
.end method

.method public abstract init()V
.end method

.method public abstract notifyCameraOperateActionToUI(I)V
.end method

.method public abstract onScreenFormChanged(IZ)V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setSource(I)V
.end method

.method public abstract setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V
.end method

.method public abstract setTemplateListener(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateCurrentPage(I)V
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param
.end method

.method public abstract updateOrientation(I)V
.end method

.method public abstract updateSelectedTemplate(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
.end method
