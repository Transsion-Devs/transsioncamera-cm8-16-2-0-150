.class public Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;
    }
.end annotation


# static fields
.field public static final APP_LOCK_PACKAGE:Ljava/lang/String; = "com.transsion.applock"

.field public static final FACEBOOKMESSAGE:Ljava/lang/String; = "com.facebook.orca"

.field public static final NORMAL_ID:I = 0x0

.field public static final SPLIT_SCREEN_PKG:Ljava/lang/String; = "com.transsion.splitscreen"

.field private static final TAG:Ljava/lang/String; = "TranAospActivityTaskManager"

.field public static final TWIN_ID:I = 0x3e7

.field public static final WINDOWING_MODE:I = 0x5

.field public static final WINDOWING_MODE_DEF:I = -0x2

.field public static final WINDOWING_MODE_FREEFORM:I = 0x5

.field public static final WINDOWING_MODE_FULLSCREEN:I = 0x1

.field public static final WINDOWING_MODE_MULTI_WINDOW:I = 0x6

.field public static final WINDOWING_MODE_PINNED:I = 0x2

.field private static sActivityManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sClassNameStub:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sManagerClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sMaxRecentTasks:I

.field private static sTaskSnapshotClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityTaskExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

.field private final mObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-string v0, "android.app.ActivityTaskManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassName:Ljava/lang/Class;

    .line 46
    const-string v0, "android.app.IActivityTaskManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    .line 47
    const-string v0, "android.app.ActivityManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sActivityManagerClass:Ljava/lang/Class;

    .line 48
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sManagerClassName:Ljava/lang/Class;

    .line 49
    const-string v0, "android.app.IActivityTaskManager$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassNameStub:Ljava/lang/Class;

    .line 50
    const-string v0, "android.window.TaskSnapshot"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sTaskSnapshotClass:Ljava/lang/Class;

    const/4 v0, -0x1

    .line 70
    sput v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sMaxRecentTasks:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mContext:Landroid/content/Context;

    .line 76
    new-instance v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    invoke-direct {v1, v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mActivityTaskExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    .line 77
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassName:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getService"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    return-object p0
.end method

.method private getAllRootTaskInfosList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 828
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 829
    const-string v0, "android.app.IActivityManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 830
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/app/ActivityManager;

    const-string v4, "getService"

    invoke-static {v3, v4, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 831
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 834
    const-string v2, "getAllRootTaskInfos"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 838
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 840
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_3d

    .line 841
    check-cast p0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3d
    return-object v0
.end method

.method private getChildTaskNamesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .registers 2

    .line 867
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "childTaskNames"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private getConfiguration(Ljava/lang/Object;)Landroid/content/res/Configuration;
    .registers 3

    .line 683
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "configuration"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 685
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 686
    instance-of p1, p0, Landroid/content/res/Configuration;

    if-eqz p1, :cond_15

    .line 687
    check-cast p0, Landroid/content/res/Configuration;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRealClassMode(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 4

    .line 790
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoClsName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->isStackInfoTopClassName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private getRootTaskInfoClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 853
    const-string p0, "android.app.TaskInfo"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private getRunningTaskInfoConfiguration(Ljava/lang/Object;)Landroid/content/res/Configuration;
    .registers 4

    .line 798
    :try_start_0
    const-string p0, "android.app.ActivityManager$RunningTaskInfo"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 799
    const-string v0, "configuration"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 800
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Configuration;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 802
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRunningTaskInfoConfiguration, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getStackInfoClsName(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    .line 751
    :try_start_1
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getChildTaskNamesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 752
    const-string p1, ""

    if-eqz p0, :cond_47

    .line 753
    array-length v1, p0

    if-lez v1, :cond_47

    .line 754
    array-length v1, p0

    move v2, v0

    :goto_14
    if-ge v2, v1, :cond_47

    aget-object v3, p0, v2

    .line 755
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 756
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_27

    .line 757
    aget-object p1, v3, v5

    goto :goto_27

    :catch_25
    move-exception p0

    goto :goto_31

    .line 759
    :cond_27
    :goto_27
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_25

    if-eqz v3, :cond_2e

    return v5

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 765
    :goto_31
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStackInfoClsName, exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return v0
.end method

.method private getStackInfoPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 734
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getChildTaskNamesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 735
    const-string p1, ""

    .line 736
    array-length v0, p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_30

    const-string v1, "/"

    const/4 v2, 0x0

    if-lez v0, :cond_1a

    .line 737
    :try_start_12
    aget-object p1, p0, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    .line 739
    :cond_1a
    const-string v0, "com.transsion.splitscreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    array-length v0, p0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2f

    .line 740
    aget-object p0, p0, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2e} :catch_30

    return-object p0

    :cond_2f
    return-object p1

    :catch_30
    move-exception p0

    .line 744
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStackInfoPackageName, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getStackInfoTopPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 724
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "topActivity"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 725
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    if-eqz p0, :cond_17

    .line 727
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 729
    :cond_17
    const-string p0, ""

    return-object p0
.end method

.method private getTaskId(Ljava/lang/Object;)I
    .registers 3

    .line 651
    const-string p0, "android.app.ActivityTaskManager$RootTaskInfo"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 652
    const-string v0, "childTaskIds"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 657
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x0

    .line 658
    aget p0, p0, p1

    return p0
.end method

.method private getTaskInfoDisplayId(Ljava/lang/Object;)I
    .registers 3

    .line 693
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRootTaskInfoClass()Ljava/lang/Class;

    move-result-object p0

    .line 694
    const-string v0, "displayId"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 695
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 697
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_19

    .line 698
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private static getWindowConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Object;
    .registers 4

    .line 674
    :try_start_0
    const-class v0, Landroid/content/res/Configuration;

    const-string v1, "windowConfiguration"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 675
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 677
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowConfiguration, Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getWindowingMode(Ljava/lang/Object;)I
    .registers 5

    .line 662
    const-string v0, "android.app.WindowConfiguration"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 663
    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getWindowingMode"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 664
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 666
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_20

    .line 667
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_20
    return v1
.end method

.method private isGivenStackInfoPackageName(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 772
    :try_start_1
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getChildTaskNamesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 773
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_40

    .line 775
    array-length p1, p0

    if-lez p1, :cond_40

    .line 776
    array-length p1, p0

    move v1, v0

    :goto_12
    if-ge v1, p1, :cond_40

    aget-object v2, p0, v1

    .line 777
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    .line 778
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_29

    if-eqz v2, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :catch_29
    move-exception p0

    .line 784
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isGivenStackInfoPackageName, exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return v0
.end method

.method private isStackInfoTopClassName(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 5

    .line 705
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRootTaskInfoClass()Ljava/lang/Class;

    move-result-object p0

    .line 706
    const-string v0, "topActivity"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 707
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 708
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return v1

    .line 712
    :cond_1e
    const-string v0, "realActivity"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 713
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    if-eqz p0, :cond_52

    .line 714
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_37

    if-eqz p0, :cond_52

    return v1

    :catch_37
    move-exception p0

    .line 718
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getStackInfoTopClassName, Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public activityInMultiWindow(Ljava/lang/String;)Z
    .registers 5

    .line 192
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "activityInMultiWindow"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 195
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_23

    .line 196
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public addAnimationIconLayer(Landroid/view/SurfaceControl;)V
    .registers 5

    .line 1092
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/view/SurfaceControl;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAnimationIconLayer"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1093
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMultiExchangeListener(Ljava/lang/String;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 6

    .line 1583
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addMultiExchangeListener"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1584
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1d

    .line 1585
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method public boostEndInLauncher(I)V
    .registers 5

    .line 1409
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "boostEndInLauncher"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1410
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public boostIMEEnd(Ljava/lang/String;)V
    .registers 2

    .line 1363
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "boostIMEEnd has been deleted from AOSP"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public boostIMEStart(ILjava/lang/String;)V
    .registers 3

    .line 1358
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "boostIMEStart has been deleted from AOSP"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public boostInFling(IZI)V
    .registers 4

    .line 1378
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "boostInFling has been deleted from AOSP"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public boostSceneEnd(I)V
    .registers 5

    .line 1136
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "boostSceneEnd"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1137
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public boostSceneStart(I)V
    .registers 5

    .line 915
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "boostSceneStart"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 916
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public boostStartInLauncher(I)V
    .registers 5

    .line 1401
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "boostStartInLauncher"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1402
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1403
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public checkAndUpdateEventStateForMulti(Ljava/lang/String;ZZJ)Z
    .registers 10

    .line 1300
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "checkAndUpdateEventStateForMulti"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1301
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_33

    .line 1302
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method public checkTaskCanEnterMultiWin(I)Z
    .registers 5

    .line 1549
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "checkTaskCanEnterMultiWin"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1550
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_24

    .line 1551
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public clearFinishFixedRotationWithTransaction()V
    .registers 5

    .line 921
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "clearFinishFixedRotationWithTransaction"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 922
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearMultiWindowExtendSize(I)V
    .registers 5

    .line 1469
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "clearMultiWindowExtendSize"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1470
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1471
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public getAllMultiWindowPackageInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1558
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getAllMultiWindowPackageInfo"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1559
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1a

    .line 1560
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 1562
    :cond_1a
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAllMultiWindowTaskInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1291
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getAllMultiWindowTaskInfo"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1293
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllRootTaskInfosOnDisplay(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1207
    const-string v0, "android.app.ActivityTaskManager$RootTaskInfo"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1208
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getAllRootTaskInfosOnDisplay"

    invoke-static {v1, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1209
    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_4d

    .line 1212
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1213
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1214
    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1219
    :cond_4d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_57
    if-ge v3, v2, :cond_132

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 1221
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1222
    sget-object v5, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v6, "RootTaskInfo"

    invoke-static {v5, v6}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_6c
    :try_start_6c
    new-instance v5, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;

    invoke-direct {v5}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;-><init>()V

    .line 1227
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRootTaskInfoClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "topActivity"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1228
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1229
    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTopActivity(Landroid/content/ComponentName;)V

    .line 1231
    const-string v6, "bounds"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1232
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 1234
    const-string v6, "childTaskIds"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1235
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskIds([I)V

    .line 1237
    const-string v6, "childTaskNames"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1238
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskNames([Ljava/lang/String;)V

    .line 1240
    const-string v6, "childTaskBounds"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1241
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskBounds([Landroid/graphics/Rect;)V

    .line 1243
    const-string v6, "childTaskUserIds"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1244
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setChildTaskUserIds([I)V

    .line 1246
    const-string v6, "visible"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1247
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setVisible(Z)V

    .line 1249
    const-string v6, "position"

    invoke-static {v0, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1250
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setPosition(I)V

    .line 1252
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRootTaskInfoClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "configuration"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1253
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    .line 1254
    invoke-static {v6}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object v6

    .line 1255
    invoke-static {v6}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowingMode(Ljava/lang/Object;)I

    move-result v6

    .line 1256
    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setWindowingMode(I)V

    .line 1258
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRootTaskInfoClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "taskId"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1259
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTaskId(I)V

    .line 1261
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_118} :catch_11a

    goto/16 :goto_57

    .line 1263
    :catch_11a
    sget-object v5, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RootTaskInfo fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    :cond_132
    return-object p1
.end method

.method public getDefaultRootLeash()Landroid/view/SurfaceControl;
    .registers 5

    .line 927
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getDefaultRootLeash"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 928
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 930
    instance-of v0, p0, Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    .line 931
    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDragAndZoomBgLeash(IIIIZ)Landroid/view/SurfaceControl;
    .registers 9

    .line 938
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1, v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDragAndZoomBgLeash"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 939
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 941
    instance-of p1, p0, Landroid/view/SurfaceControl;

    if-eqz p1, :cond_35

    .line 942
    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0

    :cond_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFocusedWinPkgName()Ljava/lang/String;
    .registers 5

    .line 122
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getFocusedWinPkgName"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 123
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 125
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 126
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGivenPkgWindowMode(Ljava/lang/String;)I
    .registers 6

    const/4 v0, -0x2

    .line 433
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v1

    .line 434
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 435
    invoke-direct {p0, v2, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->isGivenStackInfoPackageName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoTopPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_26

    :catch_24
    move-exception p0

    goto :goto_4d

    .line 436
    :cond_26
    :goto_26
    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getConfiguration(Ljava/lang/Object;)Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 438
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 440
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowingMode(Ljava/lang/Object;)I

    move-result v0

    .line 441
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_24

    :cond_4c
    return v0

    .line 448
    :goto_4d
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGivenPkgWindowMode, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v0, -0x2

    .line 463
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v1

    .line 464
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 465
    invoke-direct {p0, v2, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->isGivenStackInfoPackageName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoTopPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_26

    :catch_24
    move-exception p0

    goto :goto_5b

    .line 466
    :cond_26
    :goto_26
    invoke-direct {p0, v2, p2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRealClassMode(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 467
    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getConfiguration(Ljava/lang/Object;)Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 469
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 471
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowingMode(Ljava/lang/Object;)I

    move-result v0

    .line 472
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " clsname = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5a} :catch_24

    :cond_5a
    return v0

    .line 479
    :goto_5b
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGivenPkgWindowModeForCls, exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;
    .registers 5

    .line 590
    sget-object p2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTaskSnapshot"

    invoke-static {p2, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 591
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 595
    const-string p1, "android.window.TaskSnapshot"

    invoke-static {p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    .line 596
    new-array v0, p2, [Ljava/lang/Class;

    const-string v1, "getHardwareBuffer"

    invoke-static {p1, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 597
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 598
    instance-of p1, p0, Landroid/hardware/HardwareBuffer;

    if-eqz p1, :cond_3c

    .line 599
    check-cast p0, Landroid/hardware/HardwareBuffer;

    return-object p0

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxRecentTasksStatic()I
    .registers 4

    .line 309
    sget p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sMaxRecentTasks:I

    if-gez p0, :cond_2a

    .line 310
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sActivityManagerClass:Ljava/lang/Class;

    const-string v0, "isLowRamDeviceStatic"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 312
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sActivityManagerClass:Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 313
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 314
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_21
    if-eqz v1, :cond_26

    const/16 p0, 0x24

    goto :goto_28

    :cond_26
    const/16 p0, 0x30

    .line 316
    :goto_28
    sput p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sMaxRecentTasks:I

    .line 318
    :cond_2a
    sget p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sMaxRecentTasks:I

    return p0
.end method

.method public getMultiDisplayAreaAppInfo(II)Landroid/os/Bundle;
    .registers 6

    .line 1591
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMultiDisplayAreaAppInfo"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1592
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_27

    .line 1593
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;
    .registers 6

    .line 949
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMultiDisplayAreaTopPackageV4"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 950
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 952
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_27

    .line 953
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiWinTopTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 6

    .line 960
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMultiWinTopTask"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 961
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 963
    instance-of p1, p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_27

    .line 964
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiWindowBlackList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getMultiWindowBlackList"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 226
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_38

    .line 229
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 230
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_38
    return-object v0
.end method

.method public getMultiWindowDefaultRect()Landroid/graphics/Rect;
    .registers 5

    .line 1384
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getMultiWindowDefaultRect"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1385
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1a

    .line 1386
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiWindowParams(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 636
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMultiWindowParams"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 637
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 639
    instance-of p1, p0, Landroid/os/Bundle;

    if-eqz p1, :cond_1f

    .line 640
    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiWindowVersion()Ljava/lang/String;
    .registers 5

    .line 214
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getMultiWindowVersion"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 215
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 217
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 218
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMuteStateV4(I)Z
    .registers 5

    .line 971
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMuteStateV4"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 972
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 974
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_27

    .line 975
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public getNeedExit(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 520
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v1

    .line 521
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 522
    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "com.transsion.applock"

    .line 523
    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoTopPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2b

    if-eqz v2, :cond_9

    const/4 p0, 0x1

    return p0

    :catch_2b
    move-exception p0

    goto :goto_2e

    :cond_2d
    return v0

    .line 529
    :goto_2e
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNeedExit, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getNotifyMultiWindowBlackList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1540
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getNotifyMultiWindowBlackList"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1541
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1a

    .line 1542
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageUserId(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    .line 569
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v1

    .line 570
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 571
    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 572
    invoke-virtual {p0, v2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getUserId(Ljava/lang/Object;)I

    move-result p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_22

    return p0

    :catch_22
    move-exception p0

    goto :goto_25

    :cond_24
    return v0

    .line 577
    :goto_25
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageUserId, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getRecentTasks"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 83
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 84
    const-string p1, "android.content.pm.ParceledListSlice"

    invoke-static {p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    .line 85
    new-array p3, p2, [Ljava/lang/Class;

    const-string v0, "getList"

    invoke-static {p1, v0, p3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 86
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    instance-of p2, p0, Ljava/util/List;

    if-eqz p2, :cond_5e

    .line 89
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 90
    const-class p3, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_5e
    return-object p1
.end method

.method public getRootTaskInfoOnDisplay(III)Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;
    .registers 8

    const/4 v0, 0x0

    .line 880
    :try_start_1
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-string v2, "getRootTaskInfoOnDisplay"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 881
    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 882
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 883
    const-string p1, "android.app.ActivityTaskManager$RootTaskInfo"

    invoke-static {p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 884
    const-string p2, "topActivity"

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 887
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    goto :goto_3d

    :catch_3a
    move-exception p0

    goto :goto_4e

    :cond_3c
    move-object p0, v0

    .line 889
    :goto_3d
    new-instance p1, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;-><init>()V

    if-eqz p0, :cond_49

    .line 890
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4a

    :cond_49
    move-object p0, v0

    :goto_4a
    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->setTopActivityString(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4d} :catch_3a

    return-object p1

    .line 893
    :goto_4e
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getRootTaskInfoOnDisplay fail: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getStackInfoTaskId(Ljava/lang/String;)I
    .registers 6

    .line 362
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 365
    invoke-direct {p0, v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 367
    invoke-direct {p0, v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getConfiguration(Ljava/lang/Object;)Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 370
    invoke-static {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 373
    invoke-static {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowingMode(Ljava/lang/Object;)I

    move-result p1

    goto :goto_2f

    :cond_2e
    move p1, v2

    :goto_2f
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4d

    .line 378
    invoke-direct {p0, v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getTaskId(Ljava/lang/Object;)I

    move-result p0

    .line 379
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_4d
    return v2
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .registers 5

    .line 1125
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTaskBounds"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1126
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1128
    instance-of p1, p0, Landroid/graphics/Rect;

    if-eqz p1, :cond_23

    .line 1129
    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskIdByPkg(Ljava/lang/String;)I
    .registers 7

    .line 543
    const-string v0, "_twin_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x3e7

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/4 v1, -0x1

    .line 547
    :try_start_d
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v2

    .line 548
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 549
    invoke-direct {p0, v3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p0, v3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getUserId(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v0, :cond_15

    .line 550
    invoke-direct {p0, v3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getTaskId(Ljava/lang/Object;)I

    move-result p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_33} :catch_34

    return p0

    :catch_34
    move-exception p0

    goto :goto_37

    :cond_36
    return v1

    .line 555
    :goto_37
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskIdByPkg, exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getTaskIdByPkgName(Ljava/lang/String;I)I
    .registers 6

    .line 1493
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTaskIdByPkgName"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1495
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_2d

    .line 1496
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1497
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_2d

    .line 1498
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2d
    const/4 p0, -0x1

    return p0
.end method

.method public getTaskOrientation(I)I
    .registers 5

    .line 982
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTaskOrientation"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 983
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 985
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_27

    .line 986
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public getTasks(IZZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1100
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "getTasks"

    if-eqz v0, :cond_32

    .line 1101
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    filled-new-array {v2, v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1102
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, p2, p3, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_52

    .line 1104
    :cond_32
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    filled-new-array {v2, v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1105
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1107
    :goto_52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    instance-of p2, p0, Ljava/util/List;

    if-eqz p2, :cond_77

    .line 1109
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_61
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_77

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 1110
    const-class p3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_77
    return-object p1
.end method

.method public getTopActivityComponent()Landroid/content/ComponentName;
    .registers 5

    .line 99
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getTopActivityComponent"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 102
    instance-of v0, p0, Landroid/content/ComponentName;

    if-eqz v0, :cond_1a

    .line 103
    check-cast p0, Landroid/content/ComponentName;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopAppWindowInfo()Landroid/os/Bundle;
    .registers 5

    .line 1450
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getTopAppWindowInfo"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1451
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1a

    .line 1452
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    .line 1454
    :cond_1a
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v0, "Method getTopAppWindowInfo not found in sClass or mObject is null"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopTask(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 5

    .line 993
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTopTask"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 994
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 996
    instance-of p1, p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_23

    .line 997
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserId(Ljava/lang/Object;)I
    .registers 5

    const/4 v0, 0x0

    .line 809
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRootTaskInfoClass()Ljava/lang/Class;

    move-result-object p0

    .line 810
    const-string v1, "userId"

    invoke-static {p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 811
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 813
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1c

    .line 814
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    move-exception p0

    goto :goto_1d

    :cond_1c
    return v0

    .line 818
    :goto_1d
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserId, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getVideoNotFullscreen(Ljava/lang/String;)Z
    .registers 6

    .line 491
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x2

    .line 492
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 493
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_13

    .line 494
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 496
    invoke-direct {p0, v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getRunningTaskInfoConfiguration(Ljava/lang/Object;)Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 498
    invoke-static {v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowConfiguration(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 500
    invoke-static {v1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getWindowingMode(Ljava/lang/Object;)I

    move-result p0

    .line 501
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoNotFullscreen  mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p0, v2, :cond_59

    return v2

    :cond_59
    const/4 p0, 0x0

    return p0

    :cond_5b
    return v2
.end method

.method public hasMultiWindow()Z
    .registers 5

    .line 618
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sManagerClassName:Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 619
    const-string v0, "activity_task"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 620
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassNameStub:Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 621
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_44

    .line 624
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasMultiWindow"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 625
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 628
    :cond_44
    instance-of p0, v1, Ljava/lang/Boolean;

    if-eqz p0, :cond_4f

    .line 629
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4f
    return v0
.end method

.method public hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;
    .registers 5

    .line 155
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookGetMultiWindowDefaultRect"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 156
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 158
    instance-of p1, p0, Landroid/graphics/Rect;

    if-eqz p1, :cond_23

    .line 159
    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public hookMultiWindowToClose(II)V
    .registers 6

    .line 1678
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookMultiWindowToClose"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1679
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_23

    .line 1680
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.method public hookMultiWindowToExchange(II)V
    .registers 6

    .line 1485
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookMultiWindowToExchange"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1486
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_23

    .line 1487
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.method public hookMultiWindowVisible()V
    .registers 5

    .line 1393
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "hookMultiWindowVisible"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1394
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_16

    .line 1395
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public hookMultiWindowVisibleWithCallback(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 5

    .line 1575
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookMultiWindowVisibleWithCallback"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1576
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1b

    .line 1577
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void
.end method

.method public hookReparentToDefaultDisplay(II)V
    .registers 6

    .line 1004
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookReparentToDefaultDisplay"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1005
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hookSetMultiWindowDefaultRectResult(Landroid/graphics/Rect;)V
    .registers 5

    .line 1010
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/graphics/Rect;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookSetMultiWindowDefaultRectResult"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1011
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hookShowBlurLayer(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 6

    .line 1417
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/view/SurfaceControl;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookShowBlurLayer"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1418
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1d

    .line 1419
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method public hookShowBlurLayerFinish()V
    .registers 5

    .line 1016
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "hookShowBlurLayerFinish"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1017
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hookStartActivityResult(ILandroid/graphics/Rect;)V
    .registers 6

    .line 1022
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Rect;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookStartActivityResult"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1023
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 5

    if-eqz p3, :cond_d

    .line 167
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mActivityTaskExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    new-instance v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;->hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;)V

    return-void

    .line 169
    :cond_d
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mActivityTaskExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;->hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;)V

    return-void
.end method

.method public hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
    .registers 12

    if-eqz p5, :cond_e

    .line 1154
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mActivityTaskExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    move-object v0, p5

    new-instance p5, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$$ExternalSyntheticLambda0;

    invoke-direct {p5, v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;->hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;)V

    goto :goto_18

    .line 1156
    :cond_e
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mActivityTaskExt:Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt;->hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManagerExt$TranWindowContainerTransactionCallback;)V

    .line 1158
    :goto_18
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "hookStartMultiWindowAndMakeOwnAnimation success"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hookToMultiWindow(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 1531
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const-class v2, Landroid/os/Bundle;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hookToMultiWindow"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1532
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_21

    .line 1533
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public inMultiWindowMode()Z
    .registers 5

    .line 144
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "inMultiWindowMode"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 145
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 147
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 148
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isCanEnterMultiWin(Landroid/content/ComponentName;)Z
    .registers 5

    .line 1600
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/content/ComponentName;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isCanEnterMultiWin"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1601
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_23

    .line 1602
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x1

    return p0
.end method

.method public isHasMultiWindow()Z
    .registers 5

    .line 1653
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isHasMultiWindow"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1654
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1656
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 1657
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isIMEShowing()Z
    .registers 5

    .line 133
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isIMEShowing"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 134
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 136
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 137
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isKeyguardLocking()Z
    .registers 5

    .line 1028
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isKeyguardLocking"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1029
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1031
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 1032
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isPCSourceDisplay(I)Z
    .registers 5

    .line 1622
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isPCSourceDisplay"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1623
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_27

    .line 1624
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public isPinnedMode()Z
    .registers 5

    .line 1039
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isPinnedMode"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1040
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1042
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 1043
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isResizableActivity()Z
    .registers 5

    .line 1630
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isResizableActivity"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1631
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1e

    .line 1632
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isSecureWindow()Z
    .registers 5

    .line 1142
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isSecureWindow"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1143
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1145
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 1146
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isSplitScreen()Z
    .registers 5

    .line 332
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 333
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isSplitScreen"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 334
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 335
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_24

    .line 336
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_24
    return v1
.end method

.method public isSupportMultiWindow()Z
    .registers 5

    .line 175
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isSupportMultiWindow"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 176
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 178
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 179
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public isTheMainScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 400
    :try_start_9
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getAllRootTaskInfosList()Ljava/util/List;

    move-result-object v2

    .line 402
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 403
    invoke-direct {p0, v4, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->isStackInfoTopClassName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-direct {p0, v4, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoClsName(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_2b

    :catch_28
    move-exception p0

    move p1, v0

    goto :goto_61

    .line 404
    :cond_2b
    :goto_2b
    invoke-direct {p0, v4}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getTaskInfoDisplayId(Ljava/lang/Object;)I

    move-result p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_28

    move v3, v1

    goto :goto_33

    :cond_31
    move p1, v0

    move v3, p1

    :goto_33
    if-nez v3, :cond_77

    .line 410
    :try_start_35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 411
    invoke-direct {p0, v3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getStackInfoPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    const-string v4, "com.facebook.orca"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 412
    invoke-direct {p0, v3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getTaskInfoDisplayId(Ljava/lang/Object;)I

    move-result p1

    goto :goto_77

    :catch_5a
    move-exception p0

    goto :goto_61

    .line 415
    :cond_5c
    invoke-direct {p0, v3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->getTaskInfoDisplayId(Ljava/lang/Object;)I

    move-result p1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_60} :catch_5a

    goto :goto_39

    .line 419
    :goto_61
    sget-object p2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTheMainScreen, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    :goto_77
    if-nez p1, :cond_7a

    goto :goto_7b

    :cond_7a
    move v1, v0

    :goto_7b
    return v1
.end method

.method public notAllowKeyguardGoingAwayQuickly(Z)V
    .registers 5

    .line 1283
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "notAllowKeyguardGoingAwayQuickly"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1285
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method public notifyAuthenticateSucceed(Z)V
    .registers 5

    .line 1431
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "notifyAuthenticateSucceed"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1432
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1433
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public notifyKeyguardGoingAwayQuickly(Z)V
    .registers 5

    .line 1424
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "notifyKeyguardGoingAwayQuickly"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1425
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1426
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public notifyLauncherPageTurning(Z)V
    .registers 5

    .line 1309
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "notifyLauncherPageTurning"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1310
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1311
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public registerActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Landroid/content/IntentFilter;)Z
    .registers 3

    .line 1665
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "registerActivityStarterExecutedObserver is not support in this version through AOSP"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public registerMultiWindowWmShellListener(Landroid/os/IBinder;)V
    .registers 5

    .line 1523
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/os/IBinder;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "registerMultiWindowWmShellListener"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1524
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1b

    .line 1525
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void
.end method

.method public removeAnimationIconLayer(Landroid/view/SurfaceControl;)V
    .registers 5

    .line 1118
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/view/SurfaceControl;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeAnimationIconLayer"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1119
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeRootTasksInWindowingModes([I)V
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    .line 298
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeRootTasksInWindowingModes"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 299
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method public removeTask(I)Z
    .registers 5

    .line 111
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeTask"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 114
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_27

    .line 115
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public removeTaskPC(II)V
    .registers 6

    .line 1615
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeTaskPC"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1616
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_23

    .line 1617
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.method public reparentActivity(IIZ)V
    .registers 7

    .line 323
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_2b

    .line 324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "reparentActivity"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 325
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-void
.end method

.method public reparentTaskToDefaultTDA()V
    .registers 5

    .line 1507
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "reparentTaskToDefaultTDA"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1508
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_16

    .line 1509
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public requestHideDock()V
    .registers 5

    .line 1645
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "requestHideDock"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1646
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_16

    .line 1647
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public requestShowDock()V
    .registers 5

    .line 1638
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "requestShowDock"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1639
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_16

    .line 1640
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V
    .registers 5

    .line 238
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    .line 239
    sget-object p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setActivityController"

    invoke-static {p1, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    new-instance v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager$TranActivityControllerExt;-><init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBoostSceneState(ILjava/lang/String;Z)V
    .registers 8

    .line 1337
    const-string p0, "com.transsion.hubsdk.TranServiceManager"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 1339
    const-string v0, "getServiceIBinder"

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 1341
    const-string v0, "activity_task"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    .line 1342
    const-string v0, "com.transsion.hubsdk.app.ITranActivityTaskManager$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p0, :cond_64

    if-eqz v0, :cond_64

    .line 1344
    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1345
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 1347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setBoostSceneState"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    return-void
.end method

.method public setConnectBlackListToSystem(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    .line 345
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/List;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setConnectBlackListToSystem"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 346
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method public setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V
    .registers 9

    .line 1050
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, [F

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/view/SurfaceControl;

    filled-new-array {v3, v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setFinishFixedRotationWithTransaction"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1051
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFlingState(Z)V
    .registers 2

    .line 1373
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "setFlingState has been deleted from AOSP"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setJankScenarioState(ILjava/lang/String;Z)V
    .registers 8

    .line 1317
    const-string p0, "com.transsion.hubsdk.TranServiceManager"

    invoke-static {p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 1319
    const-string v0, "getServiceIBinder"

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 1321
    const-string v0, "activity_task"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    .line 1322
    const-string v0, "com.transsion.hubsdk.app.ITranActivityTaskManager$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p0, :cond_64

    if-eqz v0, :cond_64

    .line 1324
    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1325
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 1327
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setJankScenarioState"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1328
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    return-void
.end method

.method public setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V
    .registers 6

    .line 1515
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/os/Bundle;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiEnableStateForOOBE"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1516
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_21

    .line 1517
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-void
.end method

.method public setMultiWindowAcquireFocus(IZ)V
    .registers 6

    .line 1056
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiWindowAcquireFocus"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1057
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMultiWindowBlackListToSystem(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1062
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiWindowBlackListToSystem"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1063
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMultiWindowConfigToSystem(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1068
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/util/List;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiWindowConfigToSystem"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1069
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMultiWindowExtendSize(II)V
    .registers 6

    .line 1461
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiWindowExtendSize"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1462
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_23

    .line 1463
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.method public setMultiWindowParams(Landroid/os/Bundle;)V
    .registers 5

    .line 1169
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/os/Bundle;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiWindowParams"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1170
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMultiWindowWhiteListToSystem(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1074
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMultiWindowWhiteListToSystem"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1075
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMuteStateV4(ZI)V
    .registers 6

    .line 1080
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMuteStateV4"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1081
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStartInMultiWindow(Ljava/lang/String;III)V
    .registers 8

    .line 900
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setStartInMultiWindow"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 902
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStartInMultiWindowAsUser(Ljava/lang/String;IIII)V
    .registers 9

    .line 907
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2, v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setStartInMultiWindowAsUser"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 909
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStartInMultiWindowWithBundle(Landroid/os/Bundle;IIII)V
    .registers 9

    .line 1567
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/os/Bundle;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2, v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setStartInMultiWindowWithBundle"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1568
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_2d

    .line 1569
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return-void
.end method

.method public setTbSpecialLayerState(ZI)V
    .registers 6

    .line 1163
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setTbSpecialLayerState"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1164
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setThunderbackAnimating(Z)V
    .registers 5

    .line 1477
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setThunderbackAnimating"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1478
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_1f

    .line 1479
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public startCurrentAppInMultiWindow(ZI)V
    .registers 6

    .line 186
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startCurrentAppInMultiWindow"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 187
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startLauncherAction(Landroid/content/Intent;I)V
    .registers 3

    .line 1368
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "startLauncherAction has been deleted from AOSP"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopTaskPC(II)V
    .registers 6

    .line 1607
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stopTaskPC"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1608
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_23

    .line 1609
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.method public takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;
    .registers 7

    .line 1177
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidT()Z

    move-result v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "takeTaskSnapshot"

    if-eqz v0, :cond_23

    .line 1178
    sget-object p2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 1179
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_49

    .line 1180
    :cond_23
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1181
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1182
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_49

    :cond_48
    const/4 p0, 0x0

    .line 1185
    :goto_49
    new-instance p1, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;-><init>()V

    if-nez p0, :cond_58

    .line 1187
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p2, "TranTaskSnapshot is null"

    invoke-static {p0, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 1190
    :cond_58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sTaskSnapshotClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_99

    .line 1191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "getHardwareBuffer"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p2, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 1192
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1193
    instance-of v0, p2, Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_7f

    .line 1194
    check-cast p2, Landroid/hardware/HardwareBuffer;

    iput-object p2, p1, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 1196
    :cond_7f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "getColorSpace"

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p2, v0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 1197
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, p0, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1198
    instance-of p2, p0, Landroid/graphics/ColorSpace;

    if-eqz p2, :cond_99

    .line 1199
    check-cast p0, Landroid/graphics/ColorSpace;

    iput-object p0, p1, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    :cond_99
    return-object p1
.end method

.method public taskInMultiWindowById(I)Z
    .registers 5

    .line 203
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "taskInMultiWindowById"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 204
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 206
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_27

    .line 207
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public unRegisterActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Z
    .registers 2

    .line 1671
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "unRegisterActivityStarterExecutedObserver is not support in this version through AOSP"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 5

    .line 1271
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Landroid/content/res/Configuration;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateConfiguration"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1272
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1274
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_23

    .line 1275
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public updateMediaMapForDynamicIsland(Ljava/lang/String;Z)V
    .registers 6

    .line 1439
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateMediaMapForDynamicIsland"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1440
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_22

    .line 1441
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1443
    :cond_22
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    const-string p1, "Method updateMediaMapForDynamicIsland not found in sClass or mObject is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateZBoostTaskIdWhenToSplit(I)V
    .registers 5

    .line 1086
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateZBoostTaskIdWhenToSplit"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1087
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mObject:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
