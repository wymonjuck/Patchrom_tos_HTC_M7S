.class Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;
.super Landroid/database/ContentObserver;
.source "QromPowerSaveManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromPowerSaveManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 329
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1500(Lcom/tencent/qrom/services/QromPowerSaveManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_mode_setting"

    invoke-static {v1, v2, v0}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 330
    .local v0, "bPowerSaveModeEnabled":Z
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    const-string v2, "powersave_mode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power save mode change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2100(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbPowerSaveModeEnabled:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1200()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 332
    # setter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbPowerSaveModeEnabled:Z
    invoke-static {v0}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1202(Z)Z

    .line 333
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerSaveManagerService$1;->this$0:Lcom/tencent/qrom/services/QromPowerSaveManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->mbPowerSaveModeEnabled:Z
    invoke-static {}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$1200()Z

    move-result v2

    # invokes: Lcom/tencent/qrom/services/QromPowerSaveManagerService;->updatePowerSaveModeLocked(Z)V
    invoke-static {v1, v2}, Lcom/tencent/qrom/services/QromPowerSaveManagerService;->access$2200(Lcom/tencent/qrom/services/QromPowerSaveManagerService;Z)V

    .line 335
    :cond_1
    return-void
.end method
