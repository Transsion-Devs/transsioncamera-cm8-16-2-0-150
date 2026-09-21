.class public Lcom/ss/android/vesdk/VETest$Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VETest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public autoCalculateRenderSize:Z

.field public bitmap:Landroid/graphics/Bitmap;

.field public renderCallback:Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;

.field public renderHeight:I

.field public renderWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/ss/android/vesdk/VETest$Settings;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 109
    iput v1, p0, Lcom/ss/android/vesdk/VETest$Settings;->renderWidth:I

    .line 110
    iput v1, p0, Lcom/ss/android/vesdk/VETest$Settings;->renderHeight:I

    .line 115
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VETest$Settings;->autoCalculateRenderSize:Z

    .line 121
    iput-object v0, p0, Lcom/ss/android/vesdk/VETest$Settings;->renderCallback:Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;

    return-void
.end method
