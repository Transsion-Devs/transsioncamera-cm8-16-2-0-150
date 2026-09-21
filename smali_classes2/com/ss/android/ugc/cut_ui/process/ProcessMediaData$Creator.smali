.class public final Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_ui/process/ICutMediaData$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic readFromIntent(Landroid/content/Intent;)Lcom/ss/android/ugc/cut_ui/process/ICutMediaData;
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData$Creator;->readFromIntent(Landroid/content/Intent;)Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;

    move-result-object p0

    return-object p0
.end method

.method public readFromIntent(Landroid/content/Intent;)Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;
    .registers 4

    const-string p0, "intent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-string p0, "arg_data_process_items"

    .line 35
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 39
    const-string v0, "arg_data_all_items"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 42
    const-string v1, "arg_data_text_items"

    .line 41
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p0, :cond_26

    .line 44
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_26

    .line 45
    :cond_20
    new-instance v1, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;

    invoke-direct {v1, p0, v0, p1}, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v1

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return-object p0
.end method
