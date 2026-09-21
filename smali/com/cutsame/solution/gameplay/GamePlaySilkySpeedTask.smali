.class public final Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public d:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

.field public final e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

.field public final f:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GamePlay_SilkySpeed"

    .line 2
    iput-object v0, p0, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cutsame/solution/init/CutSameSolution;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution;

    invoke-virtual {v1}, Lcom/cutsame/solution/init/CutSameSolution;->getWorkSpaceConfig$CutSameIF_release()Lcom/cutsame/solution/config/WorkSpaceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/config/WorkSpaceConfig;->getWorkSpaceDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->GAME_PLAY:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->getDirName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/ies/cutsame/util/GamePlayType;->SILKY_SPEED:Lcom/bytedance/ies/cutsame/util/GamePlayType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin\u2026.toLowerCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;->b:Ljava/lang/String;

    .line 7
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-direct {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;-><init>()V

    iput-object v1, p0, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;->d:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    .line 8
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-direct {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;-><init>()V

    iput-object v1, p0, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    .line 9
    new-instance v1, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask$compileNLESession$2;

    invoke-direct {v1, p0}, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask$compileNLESession$2;-><init>(Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;->f:Lkotlin/Lazy;

    .line 18
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 p0, 0x0

    :goto_6c
    if-nez p0, :cond_6f

    return-void

    .line 21
    :cond_6f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-void

    .line 22
    :cond_73
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$getCachePath$p(Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getNleEditor$p(Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;)Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    return-object p0
.end method
