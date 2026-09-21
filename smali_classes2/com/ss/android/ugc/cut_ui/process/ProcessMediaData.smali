.class public final Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_ui/process/ICutMediaData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData$Companion;,
        Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData$Creator;
    }
.end annotation


# static fields
.field public static final ARG_DATA_ALL_ITEMS:Ljava/lang/String; = "arg_data_all_items"

.field public static final ARG_DATA_PROCESS_ITEMS:Ljava/lang/String; = "arg_data_process_items"

.field public static final ARG_DATA_TEXT_ITEMS:Ljava/lang/String; = "arg_data_text_items"

.field public static final Companion:Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData$Companion;


# instance fields
.field private final allItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final processItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final textItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;->Companion:Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "processItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;->processItems:Ljava/util/ArrayList;

    .line 23
    iput-object p2, p0, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;->allItems:Ljava/util/ArrayList;

    .line 24
    iput-object p3, p0, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;->textItems:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    .line 22
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getAllItems()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;->allItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getProcessItems()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;->processItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getTextItems()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;->textItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public writeToIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-string v0, "arg_data_process_items"

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;->processItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;->allItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 55
    const-string v1, "arg_data_all_items"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 57
    :cond_15
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;->textItems:Ljava/util/ArrayList;

    if-eqz p0, :cond_1e

    .line 58
    const-string v0, "arg_data_text_items"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_1e
    return-object p1
.end method
