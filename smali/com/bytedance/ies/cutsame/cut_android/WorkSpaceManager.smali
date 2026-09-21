.class public final Lcom/bytedance/ies/cutsame/cut_android/WorkSpaceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/cut_android/WorkSpaceManager$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/WorkSpaceManager;

.field private static final TAG:Ljava/lang/String; = "cut.WorkSpaceManager"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/WorkSpaceManager;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/cut_android/WorkSpaceManager;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/WorkSpaceManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/WorkSpaceManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final saveToWorkspace(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 160
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getTemplateModel()Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;

    move-result-object p0

    if-eqz p0, :cond_50

    .line 162
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->toJson()Ljava/lang/String;

    move-result-object p0

    .line 166
    :try_start_a
    const-string v0, "/template.json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    const-string v2, "json"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v0}, Lcom/bytedance/ies/cutsame/util/FileUtils;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    iget-object v2, p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/CutSource;->getType()Lcom/ss/android/ugc/cut_ui/CutSourceType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/CutSourceType;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p3, v2, p1}, Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Gson().toJson(WorkspaceM\u2026source.source.type.desc))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    const-string p1, "/template.metadata"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {v1, p0, p1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p0

    .line 176
    new-instance p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateException;

    const-string p2, "write file error"

    invoke-direct {p1, p2, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 160
    :cond_50
    new-instance p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateException;

    const-string p1, "model is null"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public final copyWorkspace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "oldWorkspaceId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newWorkspaceId"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 48
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->TEMPLATE_WORKSPACE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v1, p1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4e

    return p0

    .line 54
    :cond_4e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 56
    sget-object v2, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v2, v0}, Lcom/bytedance/ies/cutsame/util/FileUtils;->removeDirectory(Ljava/io/File;)V

    goto :goto_62

    :catch_5f
    move-exception v0

    move-object p1, v0

    goto :goto_96

    .line 58
    :cond_62
    :goto_62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6b

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_6b
    sget-object v2, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/ies/cutsame/util/FileUtils;->copyDirToDir(Ljava/io/File;Ljava/io/File;)Z

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "/template.json"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_95

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-static {v0, v1, p1, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    .line 68
    invoke-static {v0, p2, v1, p3, v1}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_94
    .catch Lcom/bytedance/ies/cutsame/cut_android/TemplateException; {:try_start_10 .. :try_end_94} :catch_5f

    return p1

    :cond_95
    return p0

    .line 75
    :goto_96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public final deleteWorkspace(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "workspaceId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object p0, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    sget-object v3, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->TEMPLATE_WORKSPACE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v2, p1, v3}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/cutsame/util/FileUtils;->removeDirectory(Ljava/io/File;)V

    return-void
.end method

.method public final queryAllWorkspace(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    sget-object v3, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->TEMPLATE_WORKSPACE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v2, p1, v3}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 29
    array-length v2, v1

    const/4 v3, 0x0

    :cond_2b
    :goto_2b
    if-ge v3, v2, :cond_51

    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 30
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 32
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "workspaceFolder.name"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4}, Lcom/bytedance/ies/cutsame/cut_android/WorkSpaceManager;->queryWorkspace(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;

    move-result-object v4

    if-nez v4, :cond_4d

    goto :goto_2b

    .line 33
    :cond_4d
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_51
    return-object v0
.end method

.method public final queryWorkspace(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;
    .registers 12

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "workspaceId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->TEMPLATE_WORKSPACE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance p1, Ljava/io/File;

    const-string v0, "/template.json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_3f

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    move-wide v4, p0

    goto :goto_40

    :cond_3f
    move-wide v4, v0

    :goto_40
    cmp-long p0, v4, v0

    if-eqz p0, :cond_4e

    .line 98
    new-instance v2, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;-><init>(Ljava/lang/String;JLcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_4e
    const/4 p0, 0x0

    return-object p0
.end method

.method public final saveWorkspace(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "player"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getSource()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    move-result-object p2

    if-nez p2, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/cut_android/WorkSpaceManager;->saveWorkspace(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final saveWorkspace(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p2, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-virtual {v0}, Lcom/ss/android/ugc/cut_ui/CutSource;->getType()Lcom/ss/android/ugc/cut_ui/CutSourceType;

    move-result-object v0

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/WorkSpaceManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    .line 125
    const-string v2, "saveWorkspace success : "

    const-string v3, "cut.WorkSpaceManager"

    const/16 v4, 0x2f

    if-ne v0, v1, :cond_5e

    .line 126
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    sget-object v5, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->TEMPLATE_WORKSPACE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v1, p1, v5}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, p3}, Lcom/bytedance/ies/cutsame/cut_android/WorkSpaceManager;->saveToWorkspace(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p0, p2, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p0, p2, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object p0
    :try_end_58
    .catch Lcom/bytedance/ies/cutsame/cut_android/TemplateException; {:try_start_26 .. :try_end_58} :catch_59

    return-object p0

    :catch_59
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b4

    .line 136
    :cond_5e
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->digestStringSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->TEMPLATE_WORKSPACE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v0, p1, v6}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 141
    :try_start_8f
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 143
    invoke-direct {p0, p2, v0, p3}, Lcom/bytedance/ies/cutsame/cut_android/WorkSpaceManager;->saveToWorkspace(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_a5
    .catch Lcom/bytedance/ies/cutsame/cut_android/TemplateException; {:try_start_8f .. :try_end_a5} :catch_a6

    return-object p0

    :catch_a6
    move-exception p0

    .line 148
    sget-object p1, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->removeDirectory(Ljava/io/File;)V

    .line 150
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b4
    const/4 p0, 0x0

    return-object p0
.end method
