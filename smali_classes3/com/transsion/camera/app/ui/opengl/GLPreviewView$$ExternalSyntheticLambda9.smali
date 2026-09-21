.class public final synthetic Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda9;->f$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda9;->f$1:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda9;->f$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda9;->f$1:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->$r8$lambda$sgkqJupY2tMEoX2RtRyMFO-cunU(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    return-void
.end method
