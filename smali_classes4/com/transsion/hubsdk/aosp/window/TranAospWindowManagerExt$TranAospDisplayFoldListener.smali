.class public Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospDisplayFoldListener;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranAospDisplayFoldListener"
.end annotation


# instance fields
.field mFoldListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V
    .registers 2

    .line 364
    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospDisplayFoldListener;->mFoldListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;

    return-void
.end method


# virtual methods
.method public onDisplayFoldChanged(IZ)V
    .registers 3

    .line 370
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$TranAospDisplayFoldListener;->mFoldListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;

    if-eqz p0, :cond_7

    .line 371
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;->onDisplayFoldChanged(IZ)V

    :cond_7
    return-void
.end method
