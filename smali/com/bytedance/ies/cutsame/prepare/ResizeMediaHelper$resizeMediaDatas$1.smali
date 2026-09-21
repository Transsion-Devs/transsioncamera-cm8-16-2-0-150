.class public final Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->resizeMediaDatas(Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $cancelCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $data:Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;

.field final synthetic $index:I

.field final synthetic $isSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $licenseBuffer:[B

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $progressCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $singleDoneCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Lkotlin/jvm/functions/Function1;Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;Lkotlin/jvm/functions/Function0;ILjava/util/List;Landroid/content/Context;[BLkotlin/jvm/functions/Function1;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            "Lkotlin/jvm/functions/Function0;",
            "I",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;",
            "Landroid/content/Context;",
            "[B",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$cancelCallback:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    iput-object p3, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$progressCallback:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$data:Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;

    iput-object p5, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$singleDoneCallback:Lkotlin/jvm/functions/Function0;

    iput p6, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$index:I

    iput-object p7, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$list:Ljava/util/List;

    iput-object p8, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$context:Landroid/content/Context;

    iput-object p9, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$licenseBuffer:[B

    iput-object p10, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "inputPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outputPath"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    const-string p1, "TransMediaHelper"

    const-string v0, "optimizeMediaSize cancel"

    invoke-static {p1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$cancelCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 117
    sget-object p0, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->safeDeleteFile(Ljava/io/File;)Z

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string v0, "inputPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outputPath"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorInfo"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    const-string p1, "ve optimizeMediaSize onError? "

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "TransMediaHelper"

    invoke-static {p3, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object p1, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/bytedance/ies/cutsame/util/FileUtils;->safeDeleteFile(Ljava/io/File;)Z

    .line 161
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$singleDoneCallback:Lkotlin/jvm/functions/Function0;

    if-nez p1, :cond_29

    goto :goto_2c

    :cond_29
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 162
    :goto_2c
    iget p1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$index:I

    add-int/lit8 v3, p1, 0x1

    .line 163
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_4c

    .line 164
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    .line 165
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$context:Landroid/content/Context;

    .line 166
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$list:Ljava/util/List;

    .line 168
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$licenseBuffer:[B

    .line 169
    iget-object v5, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$progressCallback:Lkotlin/jvm/functions/Function1;

    .line 170
    iget-object v6, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$singleDoneCallback:Lkotlin/jvm/functions/Function0;

    .line 171
    iget-object v7, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    .line 172
    iget-object v8, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$cancelCallback:Lkotlin/jvm/functions/Function0;

    .line 164
    # invokes: Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->resizeMediaDatas(Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    invoke-static/range {v0 .. v8}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->access$resizeMediaDatas(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 175
    :cond_4c
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onProgress(F)V
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$progressCallback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStart(Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;)V
    .registers 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    invoke-static {v0, p1}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->access$setMVideoOptimizeTask$p(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;)V

    .line 122
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    # getter for: Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->isCanceled:Z
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->access$isCanceled$p(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 123
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->cancel()V

    :cond_15
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string v0, "inputPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outputPath"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const-string p1, "ve optimizeMediaSize onSuccess? "

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransMediaHelper"

    invoke-static {v0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$data:Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;

    invoke-virtual {p1, p2}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->updatePath(Ljava/lang/String;)V

    .line 134
    sget-object p1, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;

    invoke-virtual {p1, p2}, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->addFile(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$singleDoneCallback:Lkotlin/jvm/functions/Function0;

    if-nez p1, :cond_24

    goto :goto_27

    :cond_24
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 136
    :goto_27
    iget p1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$index:I

    add-int/lit8 v3, p1, 0x1

    .line 137
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_47

    .line 138
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->this$0:Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    .line 139
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$context:Landroid/content/Context;

    .line 140
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$list:Ljava/util/List;

    .line 142
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$licenseBuffer:[B

    .line 143
    iget-object v5, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$progressCallback:Lkotlin/jvm/functions/Function1;

    .line 144
    iget-object v6, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$singleDoneCallback:Lkotlin/jvm/functions/Function0;

    .line 145
    iget-object v7, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    .line 146
    iget-object v8, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$cancelCallback:Lkotlin/jvm/functions/Function0;

    .line 138
    # invokes: Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->resizeMediaDatas(Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    invoke-static/range {v0 .. v8}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->access$resizeMediaDatas(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 149
    :cond_47
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;->$isSuccess:Lkotlin/jvm/functions/Function1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
