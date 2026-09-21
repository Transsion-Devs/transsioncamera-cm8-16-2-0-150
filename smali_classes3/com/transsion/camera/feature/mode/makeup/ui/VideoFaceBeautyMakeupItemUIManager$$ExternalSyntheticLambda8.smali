.class public final synthetic Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda8;->f$0:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda8;->f$0:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->$r8$lambda$9OlQB2XXr96E4hKyYNFXyv5iq2g(Lcom/transsion/camera/app/common/setting/StatusMonitor;Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V

    return-void
.end method
