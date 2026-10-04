.class Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$1;
.super Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManagerAsyncCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->setTranSchedUxTagsByNameAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;

.field final synthetic val$callback:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;)V
    .registers 3

    .line 128
    iput-object p1, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$1;->this$0:Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$1;->val$callback:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;

    invoke-direct {p0}, Lcom/transsion/hubsdk/uiawarescheduling/ITranSchedManagerAsyncCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncResult(IZ)V
    .registers 3

    .line 131
    iget-object p0, p0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager$1;->val$callback:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;

    if-eqz p0, :cond_7

    .line 132
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;->onAsyncResult(IZ)V

    :cond_7
    return-void
.end method
