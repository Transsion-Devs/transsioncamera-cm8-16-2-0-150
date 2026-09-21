.class public final Lcom/ss/ugc/effectplatform/settings/SettingsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/settings/SettingsFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    new-instance v0, Lcom/ss/ugc/effectplatform/settings/SettingsFactory;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/settings/SettingsFactory;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/settings/SettingsFactory;->INSTANCE:Lcom/ss/ugc/effectplatform/settings/SettingsFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSettings(Ljava/lang/String;Ljava/lang/Object;)Lcom/ss/ugc/effectplatform/settings/Setttings;
    .registers 3

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    instance-of p0, p2, Landroid/content/Context;

    if-eqz p0, :cond_11

    .line 10
    new-instance p0, Lcom/ss/ugc/effectplatform/settings/AndroidSettings;

    check-cast p2, Landroid/content/Context;

    invoke-direct {p0, p2, p1}, Lcom/ss/ugc/effectplatform/settings/AndroidSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p0

    .line 8
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "must parse context arguement in Settings!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
