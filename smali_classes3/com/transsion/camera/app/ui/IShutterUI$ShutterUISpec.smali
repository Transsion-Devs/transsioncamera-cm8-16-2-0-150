.class public Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/IShutterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShutterUISpec"
.end annotation


# instance fields
.field public idleDrawableId:I

.field public idleToProcessingDrawableId:I

.field public idleToSmileDrawableId:I

.field public processingDrawableId:I

.field public processingToIdleDrawableId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
