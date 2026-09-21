.class public Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVITY_TYPE_HOME:I = 0x2

.field public static final ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final MULTI_WINDOW_BIG:I = 0x10

.field public static final MULTI_WINDOW_INLARGESCREEN:I = 0x2000

.field public static final MULTI_WINDOW_INTERACTIVE:I = 0x8

.field public static final MULTI_WINDOW_MODE_LIGHTING:I = 0x2

.field public static final MULTI_WINDOW_NOTINLARGESCREEN:I = 0x1

.field public static final MULTI_WINDOW_SMALL:I = 0x20

.field private static final TAG:Ljava/lang/String; = "TranWindowConfiguration"

.field public static final TRIGGER_MODE_FOUR_FINGER:I = 0x9

.field public static final TRIGGER_MODE_FULLSCREEN_MULTITASK_BTN:I = 0xd

.field public static final TRIGGER_MODE_SMARTPANEL:I = 0x2

.field public static final TRIGGER_MODE_SPLITSCREEN_DRAG:I = 0xb

.field public static final TRIGGER_MODE_SPLITSCREEN_MULTITASK_BTN:I = 0xc

.field public static final WINDOWING_MODE_FULLSCREEN:I = 0x1

.field public static final WINDOWING_MODE_MULTI_WINDOW:I = 0x6

.field public static final WINDOWING_MODE_UNDEFINED:I


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospWindowConfiguration;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubWindowConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBounds(Landroid/content/res/Configuration;)Landroid/graphics/Rect;
    .registers 3

    .line 166
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranWindowConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranWindowConfigurationAdapter;->getBounds(Landroid/content/res/Configuration;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranWindowConfigurationAdapter;
    .registers 3

    .line 198
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 199
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;->TAG:Ljava/lang/String;

    const-string v0, "TranThubWindowConfiguration"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubWindowConfiguration;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubWindowConfiguration;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubWindowConfiguration;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubWindowConfiguration;

    :cond_18
    return-object p1

    .line 202
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;->TAG:Ljava/lang/String;

    const-string v0, "TranAospWindowConfiguration"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospWindowConfiguration;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospWindowConfiguration;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospWindowConfiguration;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospWindowConfiguration;

    :cond_2b
    return-object p1
.end method

.method public inMultiWindowMode(I)Z
    .registers 3

    .line 194
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranWindowConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranWindowConfigurationAdapter;->inMultiWindowMode(I)Z

    move-result p0

    return p0
.end method

.method public isThunderbackWindow(Landroid/content/res/Configuration;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 183
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranWindowConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranWindowConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranWindowConfigurationAdapter;->isThunderbackWindow(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0

    .line 181
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "configuration cannot null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
