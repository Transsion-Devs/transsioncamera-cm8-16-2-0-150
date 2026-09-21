.class public final synthetic Lcom/transsion/camera/adapter/CameraCapabilities2Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    check-cast p1, Lcom/transsion/camera/utils/HighFpsResolution;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->$r8$lambda$nVndRVB8Qw0hxlLIAiyAKqhHecs(Lcom/transsion/camera/utils/HighFpsResolution;)I

    move-result p0

    return p0
.end method
