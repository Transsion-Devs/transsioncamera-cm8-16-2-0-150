.class public Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/widget/ITranNotificationExpandButtonAdapter;


# instance fields
.field private mButton:Lcom/transsion/hubsdk/internal/widget/TranNotificationExpandButton;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/transsion/hubsdk/internal/widget/TranNotificationExpandButton;

    invoke-direct {v0}, Lcom/transsion/hubsdk/internal/widget/TranNotificationExpandButton;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;->mButton:Lcom/transsion/hubsdk/internal/widget/TranNotificationExpandButton;

    return-void
.end method


# virtual methods
.method public setExpandedVisibility(Ljava/lang/Object;Z)V
    .registers 3

    .line 15
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;->mButton:Lcom/transsion/hubsdk/internal/widget/TranNotificationExpandButton;

    if-eqz p0, :cond_7

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/internal/widget/TranNotificationExpandButton;->setExpandedVisibility(Ljava/lang/Object;Z)V

    :cond_7
    return-void
.end method
