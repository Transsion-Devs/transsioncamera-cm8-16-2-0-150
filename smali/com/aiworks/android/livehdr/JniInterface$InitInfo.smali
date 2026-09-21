.class public final Lcom/aiworks/android/livehdr/JniInterface$InitInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aiworks/android/livehdr/JniInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitInfo"
.end annotation


# instance fields
.field public forwardType:I

.field public threadNum:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/aiworks/android/livehdr/JniInterface$InitInfo;->forwardType:I

    const/4 v0, 0x4

    .line 79
    iput v0, p0, Lcom/aiworks/android/livehdr/JniInterface$InitInfo;->threadNum:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/aiworks/android/livehdr/JniInterface$InitInfo;->forwardType:I

    .line 86
    iput p2, p0, Lcom/aiworks/android/livehdr/JniInterface$InitInfo;->threadNum:I

    return-void
.end method
