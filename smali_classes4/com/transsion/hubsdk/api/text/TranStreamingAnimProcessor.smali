.class public Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor$STREAMING_STATE;
    }
.end annotation


# static fields
.field private static final ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/hubsdk/common/api/TranAdapter<",
            "Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAMING_STATE_CANCEL:I = 0x2

.field public static final STREAMING_STATE_END:I = 0x3

.field public static final STREAMING_STATE_START:I = 0x0

.field public static final STREAMING_STATE_UPDATE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Lcom/transsion/hubsdk/common/api/TranAdapter;

    new-instance v1, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/common/api/TranAdapter;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleStreamingOutput(Landroid/view/View;ILjava/lang/CharSequence;)V
    .registers 5

    .line 58
    sget-object p0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;->handleStreamingOutput(Landroid/view/View;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setAnimCallback(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5

    .line 74
    sget-object p0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;->setAnimCallback(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEndAnimParams(I)V
    .registers 3

    .line 121
    sget-object p0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;->setEndAnimParams(I)V

    return-void
.end method

.method public setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .registers 3

    .line 66
    sget-object p0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    return-void
.end method

.method public setStartAnimParams(JJII)V
    .registers 14

    .line 87
    sget-object p0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;->setStartAnimParams(JJII)V

    return-void
.end method

.method public setUpdateAnimParams(IIJJIFFF)V
    .registers 22

    .line 111
    sget-object p0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;->setUpdateAnimParams(IIJJIFFF)V

    return-void
.end method
