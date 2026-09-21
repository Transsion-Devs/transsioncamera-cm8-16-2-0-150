.class final Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->reverseVideo(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $index:I

.field final synthetic $isSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $licenseBuffer:[B

.field final synthetic $mediaData:Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;

.field final synthetic $mediaDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSingleDone:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $onSingleProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $reversePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/util/List;Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;[B)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            "I",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;",
            "Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "[B)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$mediaData:Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$reversePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$onSingleDone:Lkotlin/jvm/functions/Function0;

    iput p4, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$index:I

    iput-object p5, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$mediaDataList:Ljava/util/List;

    iput-object p6, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;

    iput-object p7, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$context:Landroid/content/Context;

    iput-object p8, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$onSingleProgress:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$licenseBuffer:[B

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 82
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->invoke(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(I)V
    .registers 10

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VE getReverseVideo result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", patt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$mediaData:Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseVideoHelper"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_5f

    .line 94
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$mediaData:Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$reversePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->updatePath(Ljava/lang/String;)V

    .line 95
    sget-object p1, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$reversePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->addFile(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$onSingleDone:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 97
    iget p1, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$index:I

    add-int/lit8 v3, p1, 0x1

    .line 98
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$mediaDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_57

    .line 99
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$mediaDataList:Ljava/util/List;

    iget-object v4, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$onSingleProgress:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$onSingleDone:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$licenseBuffer:[B

    # invokes: Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->reverseVideo(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[B)V
    invoke-static/range {v0 .. v7}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->access$reverseVideo(Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[B)V

    return-void

    .line 101
    :cond_57
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 104
    :cond_5f
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
