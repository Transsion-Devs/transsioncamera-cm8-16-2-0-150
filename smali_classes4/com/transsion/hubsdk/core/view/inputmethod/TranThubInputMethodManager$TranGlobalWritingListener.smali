.class public Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;
.super Lcom/transsion/hubsdk/view/inputmethod/ITranGlobalWritingListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranGlobalWritingListener"
.end annotation


# instance fields
.field private mListener:Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V
    .registers 3

    .line 107
    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;->this$0:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/view/inputmethod/ITranGlobalWritingListener$Stub;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;->mListener:Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;

    return-void
.end method


# virtual methods
.method public onHandwritingStart()V
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;->mListener:Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;

    if-eqz p0, :cond_7

    .line 120
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;->onHandwritingStart()V

    :cond_7
    return-void
.end method

.method public onStylusHandwritingMotionEvent(Landroid/view/MotionEvent;Z)V
    .registers 3

    .line 112
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;->mListener:Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;

    if-eqz p0, :cond_7

    .line 113
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;->onStylusHandwritingMotionEvent(Landroid/view/MotionEvent;Z)V

    :cond_7
    return-void
.end method
