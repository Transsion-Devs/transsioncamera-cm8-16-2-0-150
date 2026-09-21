.class public interface abstract Lcom/transsion/camera/featurelibs/panorama/IPanorama;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;
    }
.end annotation


# virtual methods
.method public abstract config(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z
.end method

.method public abstract init(Z)Z
.end method

.method public abstract process(ILandroid/util/Pair;)V
.end method

.method public abstract reset()Z
.end method

.method public abstract setCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V
.end method

.method public abstract unInit()Z
.end method
