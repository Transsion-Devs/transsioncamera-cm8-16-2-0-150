.class interface abstract Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;I)V
.end method

.method public abstract onProgress(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;JJ)V
.end method

.method public abstract onSuccess(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;[B)V
.end method
