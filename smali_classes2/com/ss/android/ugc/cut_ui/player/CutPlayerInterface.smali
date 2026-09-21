.class public final Lcom/ss/android/ugc/cut_ui/player/CutPlayerInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ARG_CUT_EXTRA_OPT:Ljava/lang/String; = "extra_opt"

.field public static final ARG_CUT_MEDIA_ITEM_LIST:Ljava/lang/String; = "media_item_list"

.field public static final ARG_CUT_PLAYER_COMPILER_DATA:Ljava/lang/String; = "compile_data"

.field public static final ARG_CUT_PLAYER_OUTPUT_FILE:Ljava/lang/String; = "compile_file"

.field public static final ARG_CUT_PLAYER_WORKSPACE_ID:Ljava/lang/String; = "workspace_id"

.field public static final ARG_CUT_REPORTER:Ljava/lang/String; = "reporter"

.field public static final ARG_CUT_TEXT_ITEM_LIST:Ljava/lang/String; = "text_item_list"

.field public static final ARG_CUT_ZIP_MD5:Ljava/lang/String; = "zip_md5"

.field public static final ARG_EFFECT_MANAGER_REGION:Ljava/lang/String; = "effect_region"

.field public static final ARG_FINISH_TEMPLATE_FEED:Ljava/lang/String; = "arg_finish_template_feed"

.field public static final ARG_FINISH_TEMPLATE_PLAYER:Ljava/lang/String; = "arg_finish_template_player"

.field public static final ARG_FINISH_TEMPLATE_PREVIEW:Ljava/lang/String; = "arg_finish_template_preview"

.field public static final ARG_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field public static final INSTANCE:Lcom/ss/android/ugc/cut_ui/player/CutPlayerInterface;

.field public static final INTERFACE_JSON_VIEWER:Ljava/lang/String; = "com.ss.android.ugc.cut_ui.player.VIEW"

.field public static final INTERFACE_PLAYER:Ljava/lang/String; = "com.ss.android.ugc.cut_ui.PLAY"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/android/ugc/cut_ui/player/CutPlayerInterface;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_ui/player/CutPlayerInterface;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/player/CutPlayerInterface;->INSTANCE:Lcom/ss/android/ugc/cut_ui/player/CutPlayerInterface;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return p1
.end method

.method public final createPlayerIntentByPath(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templatePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ss.android.ugc.cut_ui.PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    new-instance v1, Lcom/ss/android/ugc/cut_ui/CutSource;

    sget-object v2, Lcom/ss/android/ugc/cut_ui/CutSourceType;->PATH:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-direct {v1, p2, v2}, Lcom/ss/android/ugc/cut_ui/CutSource;-><init>(Ljava/lang/String;Lcom/ss/android/ugc/cut_ui/CutSourceType;)V

    const-string p2, "arg_cut_source"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ugc/cut_ui/player/CutPlayerInterface;->checkIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2b

    return-object v0

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createPlayerIntentByUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ss.android.ugc.cut_ui.PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    new-instance v1, Lcom/ss/android/ugc/cut_ui/CutSource;

    sget-object v2, Lcom/ss/android/ugc/cut_ui/CutSourceType;->URL:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-direct {v1, p2, v2}, Lcom/ss/android/ugc/cut_ui/CutSource;-><init>(Ljava/lang/String;Lcom/ss/android/ugc/cut_ui/CutSourceType;)V

    const-string p2, "arg_cut_source"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ugc/cut_ui/player/CutPlayerInterface;->checkIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2b

    return-object v0

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createPlayerIntentByWorkspace(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspaceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ss.android.ugc.cut_ui.PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    new-instance v1, Lcom/ss/android/ugc/cut_ui/CutSource;

    sget-object v2, Lcom/ss/android/ugc/cut_ui/CutSourceType;->WORKSPACE:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-direct {v1, p2, v2}, Lcom/ss/android/ugc/cut_ui/CutSource;-><init>(Ljava/lang/String;Lcom/ss/android/ugc/cut_ui/CutSourceType;)V

    const-string p2, "arg_cut_source"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ugc/cut_ui/player/CutPlayerInterface;->checkIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2b

    return-object v0

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method
