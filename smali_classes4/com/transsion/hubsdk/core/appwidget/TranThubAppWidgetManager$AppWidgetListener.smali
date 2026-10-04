.class public Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager$AppWidgetListener;
.super Lcom/transsion/hubsdk/appwidget/ITranAppWidget$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppWidgetListener"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/api/app/ITranAppWidget;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;Lcom/transsion/hubsdk/api/app/ITranAppWidget;)V
    .registers 3

    .line 52
    iput-object p1, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager$AppWidgetListener;->this$0:Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/appwidget/ITranAppWidget$Stub;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager$AppWidgetListener;->mCallback:Lcom/transsion/hubsdk/api/app/ITranAppWidget;

    return-void
.end method


# virtual methods
.method public notifyAppWidgetLoadState(ZI)V
    .registers 3

    .line 57
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager$AppWidgetListener;->mCallback:Lcom/transsion/hubsdk/api/app/ITranAppWidget;

    if-eqz p0, :cond_12

    .line 59
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/ITranAppWidget;->notifyAppWidgetLoadState(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 61
    # getter for: Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifyAppWidgetLoadState: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    return-void
.end method
