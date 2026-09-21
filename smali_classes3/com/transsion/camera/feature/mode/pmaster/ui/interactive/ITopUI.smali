.class public interface abstract Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTRACT_TAG_NONE:I = -0x1

.field public static final REASON_BACK_PRESSED:Ljava/lang/String; = "onBackPressed"

.field public static final REASON_SHOW_OR_HIDE:Ljava/lang/String; = "showOrHide"

.field public static final SELECT_BLUR:I = 0x3

.field public static final SELECT_FACE_BEAUTY:I = 0x0

.field public static final SELECT_MAKEUP:I = 0x2

.field public static final SELECT_SLIM_BODY:I = 0x1

.field public static final STATE_TO_SHOW_CONTRACT_BAR:I = 0x3

.field public static final STATE_TO_SHOW_RECYCLE_VIEW:I = 0x1

.field public static final STATE_TO_SHOW_SEEK_BAR:I = 0x2

.field public static final STATE_TO_SHOW_SWITCH_BAR:I


# virtual methods
.method public abstract notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V
.end method

.method public notifyState(IIZ)V
    .registers 5

    .line 22
    const-string v0, ""

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyState(IIZLjava/lang/String;)V

    return-void
.end method

.method public abstract notifyState(IIZLjava/lang/String;)V
.end method
