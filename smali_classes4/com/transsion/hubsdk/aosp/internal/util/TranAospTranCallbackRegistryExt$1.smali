.class Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$1;
.super Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;->add(Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$TranOnContentChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<",
        "Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$TranOnContentChangedListener;",
        "Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$1;->this$0:Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;

    invoke-direct {p0}, Lcom/android/internal/util/CallbackRegistry$NotifierCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyCallback(Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$TranOnContentChangedListener;Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;ILandroid/graphics/Rect;)V
    .registers 5

    .line 34
    invoke-interface {p1}, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$TranOnContentChangedListener;->onContentChanged()V

    return-void
.end method

.method public bridge synthetic onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5

    .line 31
    check-cast p1, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$TranOnContentChangedListener;

    check-cast p2, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;

    check-cast p4, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$1;->onNotifyCallback(Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$TranOnContentChangedListener;Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;ILandroid/graphics/Rect;)V

    return-void
.end method
