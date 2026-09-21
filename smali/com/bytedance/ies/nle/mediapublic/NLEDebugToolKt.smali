.class public final Lcom/bytedance/ies/nle/mediapublic/NLEDebugToolKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final dumpNLEDraft(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/bytedance/ies/nle/editor_jni/INLEMediaSession;Ljava/lang/String;Z)Ljava/io/File;
    .registers 12

    const-string v0, "nleModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpDirPrefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Lcom/bytedance/ies/nle/editor_jni/INLEMediaSession;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object v0

    .line 21
    instance-of v1, v0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    if-eqz v1, :cond_24

    .line 22
    check-cast v0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->dumpVESequence()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->dumpVEModel()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object v3, v1

    goto :goto_28

    .line 21
    :cond_24
    const-string v1, ""

    move-object v3, v1

    move-object v7, v3

    .line 25
    :goto_28
    :try_start_28
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {p1}, Lcom/bytedance/ies/nle/editor_jni/INLEMediaSession;->getMediaRuntimeApi()Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;->getCurrDisplayImage()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_37

    goto :goto_43

    :catchall_37
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_43
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 p1, 0x0

    :cond_4a
    move-object v4, p1

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    .line 26
    invoke-static/range {v2 .. v7}, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt;->dumpNLE(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dumpNLEDraft$default(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/bytedance/ies/nle/editor_jni/INLEMediaSession;Ljava/lang/String;ZILjava/lang/Object;)Ljava/io/File;
    .registers 6

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_6

    .line 15
    const-string p2, "/sdcard/aweme/drafts"

    :cond_6
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    .line 12
    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/NLEDebugToolKt;->dumpNLEDraft(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/bytedance/ies/nle/editor_jni/INLEMediaSession;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
