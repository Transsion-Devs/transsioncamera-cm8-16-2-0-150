.class public Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDataObserver;
.super Lcom/transsion/hubsdk/app/ITranPackageDataObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranPackageDataObserver"
.end annotation


# instance fields
.field private mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;)V
    .registers 3

    .line 149
    iput-object p1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDataObserver;->this$0:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/ITranPackageDataObserver$Stub;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDataObserver;->mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 3

    .line 155
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDataObserver;->mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;

    if-eqz p0, :cond_7

    .line 156
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method
