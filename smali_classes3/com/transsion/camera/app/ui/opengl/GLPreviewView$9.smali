.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modePause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .registers 3

    .line 554
    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$9;->val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 557
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$9;->val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->modePauseCallback()V

    return-void
.end method
